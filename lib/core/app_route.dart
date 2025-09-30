import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:operation/dependencies_injection.dart';
import 'package:operation/features/features.dart';
import 'package:operation/utils/utils.dart';

enum Routes {
  root("/"),
  splashScreen("/splashscreen"),

  // Menu
  home("/home"),
  settings("/settings"),
  notification("/notification"),
  underDevelopment("/under-construction"),
  handoverItem("/handover-item"),
  supplyItem("/supply-item"),

  // Profile
  profile("/profile"),
  managementProfile("/management-profile"),
  changePassword("/change-password"),
  termsAndConditions("/terms-and-conditions"),

  // Auth
  login("/auth/login"),
  requestResetPassword("/auth/request-reset-password"),
  createPassword("/auth/create-password");

  const Routes(this.path);

  final String path;
}

class AppRoute {
  static late BuildContext context;
  static late bool isUnitTest;

  AppRoute.setStream(BuildContext ctx, {bool isTest = false}) {
    context = ctx;
    isUnitTest = isTest;
  }

  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: Routes.splashScreen.path,
        name: Routes.splashScreen.name,
        builder: (_, state) => const SplashScreenPage(),
      ),
      GoRoute(
        path: Routes.root.path,
        name: Routes.root.name,
        redirect: (_, state) => Routes.home.path,
      ),
      GoRoute(
        path: Routes.login.path,
        name: Routes.login.name,
        builder: (_, state) => MultiBlocProvider(
          providers: [
            BlocProvider(create: (_) => sl<VersioningCubit>()),
            BlocProvider(create: (_) => sl<ReloadFormCubit>()),
          ],
          child: const LoginPage(),
        ),
      ),
      GoRoute(
        path: Routes.requestResetPassword.path,
        name: Routes.requestResetPassword.name,
        builder: (_, state) => MultiBlocProvider(
          providers: [
            BlocProvider(create: (_) => sl<RequestResetPasswordCubit>()),
            BlocProvider(create: (_) => sl<ReloadFormCubit>()),
          ],
          child: const RequestResetPasswordPage(),
        ),
      ),
      GoRoute(
        path: Routes.createPassword.path,
        name: Routes.createPassword.name,
        builder: (_, state) {
          final token = state.uri.queryParameters['token'];
          return MultiBlocProvider(
            providers: [
              BlocProvider(create: (_) => sl<ResetPasswordCubit>()),
              BlocProvider(create: (_) => sl<ReloadFormCubit>()),
            ],
            child: ResetPasswordPage(token: token),
          );
        },
      ),
      GoRoute(
        path: Routes.settings.path,
        name: Routes.settings.name,
        builder: (_, state) => const SettingsPage(),
      ),
      GoRoute(
        path: Routes.termsAndConditions.path,
        name: Routes.termsAndConditions.name,
        builder: (_, state) => const TermsAndConditionsPage(),
      ),
      GoRoute(
        path: Routes.notification.path,
        name: Routes.notification.name,
        builder: (_, state) => const NotificationPage(),
      ),
      GoRoute(
        path: Routes.underDevelopment.path,
        name: Routes.underDevelopment.name,
        builder: (_, state) => const UnderConstructionPage(),
      ),
      ShellRoute(
        builder: (_, state, child) => BlocProvider(
          create: (context) => sl<MainCubit>(),
          child: MainPage(child: child),
        ),
        routes: [
          GoRoute(
            path: Routes.home.path,
            name: Routes.home.name,
            builder: (_, state) => MultiBlocProvider(
              providers: [BlocProvider(create: (_) => sl<ProfileCubit>())],
              child: const HomePage(),
            ),
          ),
          GoRoute(
            path: Routes.profile.path,
            name: Routes.profile.name,
            builder: (_, state) => MultiBlocProvider(
              providers: [
                BlocProvider(create: (_) => sl<ProfileCubit>()),
                BlocProvider(create: (_) => sl<VersioningCubit>()),
              ],
              child: const ProfilePage(),
            ),
            routes: [
              GoRoute(
                path: Routes.managementProfile.path,
                name: Routes.managementProfile.name,
                builder: (_, state) {
                  final profileData = state.extra as Map<String, dynamic>?;
                  return MultiBlocProvider(
                    providers: [
                      BlocProvider(create: (_) => sl<ReloadFormCubit>()),
                      BlocProvider(create: (_) => sl<EditProfileCubit>()),
                      BlocProvider(create: (_) => sl<ChangePictureCubit>()),
                    ],
                    child: ManagementProfile(
                      profile: profileData?['profile'] as Profile,
                    ),
                  );
                },
              ),
              GoRoute(
                path: Routes.changePassword.path,
                name: Routes.changePassword.name,
                builder: (_, state) => MultiBlocProvider(
                  providers: [
                    BlocProvider(create: (_) => sl<ReloadFormCubit>()),
                    BlocProvider(create: (_) => sl<ChangePasswordCubit>()),
                  ],
                  child: const ChangePasswordPage(),
                ),
              ),
            ],
          ),
        ],
      ),
    ],
    initialLocation: Routes.splashScreen.path,
    routerNeglect: true,
    debugLogDiagnostics: kDebugMode,
    refreshListenable: isUnitTest
        ? null
        //coverage:ignore-start
        : GoRouterRefreshStream([
            context.read<AuthCubit>().stream,
            context.read<LogoutCubit>().stream,
          ]),
    //coverage:ignore-end
    redirect: (_, GoRouterState state) {
      final bool isAllowedPages =
          state.matchedLocation == Routes.login.path ||
          state.matchedLocation == Routes.requestResetPassword.path ||
          state.matchedLocation == Routes.splashScreen.path ||
          state.matchedLocation == Routes.createPassword.path;

      ///  Check if not login
      ///  if current page is login page we don't need to direct user
      ///  but if not we must direct user to login page
      if (!((MainBoxMixin.mainBox?.get(MainBoxKeys.isLogin.name) as bool?) ??
          false)) {
        return isAllowedPages ? null : Routes.login.path;
      }

      /// Check if already login and in login page
      /// we should direct user to main page

      if (isAllowedPages &&
          ((MainBoxMixin.mainBox?.get(MainBoxKeys.isLogin.name) as bool?) ??
              false)) {
        return Routes.root.path;
      }

      /// No direct
      return null;
    },
  );
}
