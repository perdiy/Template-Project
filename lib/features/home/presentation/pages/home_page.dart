import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';
import 'package:operation/core/core.dart';
import 'package:operation/features/features.dart';
import 'package:operation/features/home/presentation/widgets/home_menu_item.dart';
import 'package:operation/features/home/presentation/widgets/menu_card.dart';
import 'package:operation/utils/utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with MainBoxMixin {
  GoRouter? _router;
  String? deviceType;

  @override
  void initState() {
    super.initState();
    context.read<ProfileCubit>().userProfile();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      _router = GoRouter.of(context);
      _router!.routerDelegate.addListener(_handleRouteChange);
    });
  }

  @override
  void dispose() {
    _router?.routerDelegate.removeListener(_handleRouteChange);
    super.dispose();
  }

  void _handleRouteChange() {
    if (Routes.root.path == '/' || Routes.home.path == '/home') {}
  }

  @override
  Widget build(BuildContext context) {
    return Parent(
      backgroundColor: Palette.background,
      child: Column(
        children: [
          SpacerV(value: Dimens.space30),

          Expanded(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: Dimens.space24),
                  child: Column(
                    children: [
                      SpacerV(value: Dimens.space36),
                      _buildHeaderHome(),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Center(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: Dimens.space24),
                child: Image.asset(
                  Images.imgAdcorp,
                  width: Dimens.logo,
                  height: Dimens.logo,
                ),
              ),
            ),
          ),
          // Main menu section
          Expanded(flex: 6, child: _buildMainMenu()),
        ],
      ),
    );
  }

  Widget _buildHeaderHome() => BlocBuilder<ProfileCubit, ProfileState>(
    builder: (context, state) {
      return state.maybeWhen(
        success: (data) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SpacerH(),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${'Hi, '}${data?.firstname} ${data?.lastname}',
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(
                        fontWeight: semiBold,
                        color: Palette.backgroundDark,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () => context.pushNamed(Routes.underDevelopment.name),
                child: Icon(
                  Iconsax.notification,
                  size: Dimens.space24,
                  color: Palette.backgroundDark,
                ),
              ),
            ],
          );
        },
        orElse: () => const PlaceholderProfile(),
      );
    },
  );

  Widget _buildMainMenu() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.all(Dimens.space24),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: GridView.builder(
              itemCount: kMenuItems.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: MediaQuery.of(context).size.width < 600 ? 3 : 3,
                mainAxisSpacing: Dimens.space16,
                crossAxisSpacing: Dimens.space16,
                childAspectRatio: 1.1,
              ),
              itemBuilder: (context, index) {
                final item = kMenuItems[index];
                return MenuCard(
                  item: item,
                  onTap: () => context.pushNamed(item.routeName),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
