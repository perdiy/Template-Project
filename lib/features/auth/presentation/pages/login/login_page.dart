import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:operation/core/core.dart';
import 'package:operation/features/features.dart';
import 'package:operation/utils/utils.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with MainBoxMixin {
  String? deviceType;
  String? notificationId;

  // Controller
  final _conEmailOrUsername = TextEditingController();
  final _conPassword = TextEditingController();

  bool _isPasswordVisible = false;

  // Focus Node
  final _fnEmailOrUsername = FocusNode();
  final _fnPassword = FocusNode();

  // Global key
  final _formValidator = <String, bool>{};

  @override
  void initState() {
    init();
    super.initState();
  }

  void init() {
    context.read<VersioningCubit>().mobileVersion();
    deviceType = getData(MainBoxKeys.deviceType);
    notificationId = getData(MainBoxKeys.notificationId);
    if (deviceType == null) {
      getPhoneInfo().then((value) {
        addData(MainBoxKeys.deviceType, value);
      });
      addData(
        MainBoxKeys.notificationId,
        const String.fromEnvironment('ONESIGNAL_APP_ID'),
      );
    }
  }

  @override
  void dispose() {
    _conEmailOrUsername.dispose();
    _conPassword.dispose();
    _fnEmailOrUsername.dispose();
    _fnPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      resizeToAvoidBottomInset: true,
      body: BlocListener<AuthCubit, AuthState>(
        listener: (_, state) {
          state.whenOrNull(
            loading: () => context.show(),
            success: (data) {
              context.dismiss();
              TextInput.finishAutofillContext();
              context.goNamed(Routes.root.name);
            },
            failure: (message) {
              context.dismiss();
              message.toToastError(context);
            },
          );
        },
        child: SafeArea(
          top: true,
          bottom: false,
          child: LayoutBuilder(
            builder: (context, constraints) {
              return SingleChildScrollView(
                physics: const ClampingScrollPhysics(),
                child: ConstrainedBox(
                  constraints: BoxConstraints(minHeight: constraints.maxHeight),
                  child: IntrinsicHeight(
                    child: Column(
                      children: [
                        // Logo section with flexible space
                        Expanded(
                          flex: 2,
                          child: Center(
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: Dimens.space24,
                              ),
                              child: Image.asset(
                                Images.imgAdcorp,
                                width: Dimens.logo,
                                height: Dimens.logo,
                              ),
                            ),
                          ),
                        ),
                        // Form section
                        Expanded(
                          flex: 3,
                          child: Container(
                            width: double.infinity,
                            padding: EdgeInsets.only(
                              left: Dimens.space24,
                              right: Dimens.space24,
                              top: Dimens.space24,
                              bottom: Dimens.space5,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(Dimens.space24),
                                topRight: Radius.circular(Dimens.space24),
                              ),
                              color: Palette.white,
                            ),
                            child: AutofillGroup(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    Strings.of(context)!.login,
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleLarge
                                        ?.copyWith(fontWeight: semiBold),
                                  ),
                                  SpacerV(value: Dimens.space6),
                                  Text(
                                    Strings.of(context)!.descLogin,
                                    textAlign: TextAlign.center,
                                  ),
                                  SpacerV(value: Dimens.space24),
                                  // Form with flexible expansion
                                  Expanded(child: _loginForm()),
                                  // Version info at bottom
                                  SpacerV(value: Dimens.space16),
                                  Align(
                                    alignment: Alignment.center,
                                    child:
                                        BlocBuilder<
                                          VersioningCubit,
                                          VersioningState
                                        >(
                                          builder: (context, state) {
                                            return state.maybeWhen(
                                              success: (data) {
                                                return Text(
                                                  '${Strings.of(context)!.appVersion} $data',
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .titleSmall
                                                      ?.copyWith(
                                                        fontWeight: medium,
                                                      ),
                                                );
                                              },
                                              orElse: () => PlaceholderBox(
                                                width: Dimens.carousel,
                                              ),
                                            );
                                          },
                                        ),
                                  ),
                                  SpacerV(value: Dimens.space10),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _loginForm() => BlocBuilder<ReloadFormCubit, ReloadFormState>(
    builder: (_, state) {
      return Column(
        children: [
          TextF(
            autoFillHints: const [AutofillHints.email, AutofillHints.username],
            key: const Key("emailOrUsername"),
            focusNode: _fnEmailOrUsername,
            textInputAction: TextInputAction.next,
            controller: _conEmailOrUsername,
            keyboardType: TextInputType.text,
            prefixIcon: Icon(
              Icons.alternate_email,
              color: Theme.of(context).textTheme.bodyLarge?.color,
            ),
            hint: Strings.of(context)!.email,
            label: Strings.of(context)!.email,
            isValid: _formValidator.putIfAbsent("emailOrUsername", () => false),
            validatorListener: (String value) {
              bool isValid = false;
              if (value.isEmpty) {
                isValid = false;
              } else if (value.contains('@')) {
                isValid = value.isValidEmail();
              } else {
                // Validasi username: minimal 3 karakter, hanya huruf/angka
                isValid = RegExp(r'^[a-zA-Z0-9._-]{3,}$').hasMatch(value);
              }
              _formValidator["emailOrUsername"] = isValid;
              context.read<ReloadFormCubit>().reload();
            },
            errorMessage: Strings.of(context)!.errorNipOrUsename,
          ),
          SpacerV(value: Dimens.space16),
          TextF(
            autoFillHints: const [AutofillHints.password],
            key: const Key("password"),
            focusNode: _fnPassword,
            textInputAction: TextInputAction.done,
            controller: _conPassword,
            keyboardType: TextInputType.text,
            prefixIcon: Icon(
              Icons.lock_outline,
              color: Theme.of(context).textTheme.bodyLarge?.color,
            ),
            obscureText: !_isPasswordVisible,
            hint: '••••••••••••',
            label: Strings.of(context)!.password,
            suffixIcon: IconButton(
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
              onPressed: () {
                setState(() {
                  _isPasswordVisible = !_isPasswordVisible;
                });
              },
              icon: Icon(
                _isPasswordVisible ? Icons.visibility_off : Icons.visibility,
              ),
            ),
            isValid: _formValidator.putIfAbsent("password", () => false),
            validatorListener: (String value) {
              _formValidator["password"] = value.length > 5;
              context.read<ReloadFormCubit>().reload();
            },
            errorMessage: Strings.of(context)!.errorPasswordLength,
          ),
          SpacerV(value: Dimens.space16),
          GestureDetector(
            onTap: () => context.pushNamed(Routes.requestResetPassword.name),
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                Strings.of(context)!.forgotPassword,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
          ),
          // Flexible spacer to push button down but allow scrolling
          const Spacer(),
          SpacerV(value: Dimens.space24),
          Button(
            title: Strings.of(context)!.login,
            width: double.maxFinite,
            borderRadius: 50,
            onPressed: _formValidator.validate()
                ? () => context.read<AuthCubit>().login(
                    LoginParams(
                      email: _conEmailOrUsername.text,
                      password: _conPassword.text,
                    ),
                  )
                : null,
          ),
          SpacerV(value: Dimens.space20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                Strings.of(context)!.donthave,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(),
              ),
              SpacerH(value: Dimens.space5),
              GestureDetector(
                onTap: () =>
                    context.pushNamed(Routes.requestResetPassword.name),
                child: Text(
                  Strings.of(context)!.register,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
            ],
          ),
        ],
      );
    },
  );
}
