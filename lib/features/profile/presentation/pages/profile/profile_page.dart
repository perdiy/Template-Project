import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';
import 'package:operation/core/core.dart';
import 'package:operation/features/features.dart';
import 'package:operation/utils/utils.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> with MainBoxMixin {
  @override
  void initState() {
    super.initState();
    context.read<ProfileCubit>().userProfile();
    context.read<VersioningCubit>().mobileVersion();
  }

  @override
  Widget build(BuildContext context) {
    return Parent(
      appBar: MyAppBar(
        title: Strings.of(context)!.profile,
        elevation: 2,
        leading: const SizedBox.shrink(),
      ).call(context),
      child: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        padding: EdgeInsets.only(
          left: Dimens.space22,
          right: Dimens.space22,
          top: Dimens.space22,
        ),
        child: Column(
          children: [
            _buildHeader(),
            SpacerV(value: Dimens.space24),
            _buildMenuProfile(),
            SpacerV(value: Dimens.space75),
            Button(
              title: Strings.of(context)!.logout,
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (_) => DialogLogout(
                    onPressed: () => context.read<LogoutCubit>().logout(),
                  ),
                );
              },
              titleColor: Palette.white,
              width: double.maxFinite,
            ),
            SpacerV(value: Dimens.space12),
            BlocBuilder<VersioningCubit, VersioningState>(
              builder: (context, state) {
                return state.maybeWhen(
                  success: (data) {
                    return Align(
                      alignment: Alignment.center,
                      child: Text(
                        '${Strings.of(context)!.appVersion} $data',
                        style: Theme.of(
                          context,
                        ).textTheme.titleSmall?.copyWith(fontWeight: medium),
                      ),
                    );
                  },
                  orElse: () =>
                      Center(child: PlaceholderBox(width: Dimens.carousel)),
                );
              },
            ),
            SpacerV(value: Dimens.space10),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() => BlocBuilder<ProfileCubit, ProfileState>(
    builder: (context, state) {
      return state.maybeWhen(
        success: (data) {
          return Container(
            padding: EdgeInsets.all(Dimens.space16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimens.space16),
              color: Palette.lightGrey,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (data?.userAccount?.profilePic != null)
                  CircleImage(
                    size: Dimens.profilePicture,
                    url: data?.userAccount?.profilePic ?? '',
                  )
                else
                  ClipOval(
                    child: Image.asset(
                      Images.imgProfileDefault,
                      width: Dimens.profilePicture,
                      height: Dimens.profilePicture,
                      fit: BoxFit.cover,
                    ),
                  ),
                const SpacerH(),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${data?.firstname} ${data?.lastname}',
                        style: Theme.of(
                          context,
                        ).textTheme.titleSmall?.copyWith(fontWeight: medium),
                        overflow: TextOverflow.ellipsis,
                      ),
                      SpacerV(value: Dimens.space4),
                      Text(
                        '${data?.nip}',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          fontWeight: regular,
                          color: Palette.subText,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      SpacerV(value: Dimens.space4),
                      Text(
                        '${data?.position?.positionName}',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          fontWeight: regular,
                          color: Palette.subText,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () => context.pushNamed(
                    Routes.managementProfile.name,
                    extra: {'profile': data},
                  ),
                  child: Icon(
                    Iconsax.edit,
                    size: Dimens.space20,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ],
            ),
          );
        },
        orElse: () => Container(
          padding: EdgeInsets.all(Dimens.space16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Dimens.space16),
            color: Palette.lightGrey,
          ),
          child: PlaceholderProfile(sizePic: Dimens.bigProfilePicture),
        ),
      );
    },
  );

  Widget _buildMenuProfile() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          Strings.of(context)!.account,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
            fontWeight: medium,
            color: Palette.subText,
          ),
        ),
        SpacerV(value: Dimens.space12),
        _buildMenuItem(Iconsax.crown_1, Strings.of(context)!.awards, () {}),
        SpacerV(value: Dimens.space12),
        _buildMenuItem(
          Iconsax.lock,
          Strings.of(context)!.changePassword,
          () => context.pushNamed(Routes.changePassword.name),
        ),
        SpacerV(value: Dimens.space16),
        Text(
          'Others',
          style: Theme.of(
            context,
          ).textTheme.bodySmall?.copyWith(color: Palette.subText),
        ),
        SpacerV(value: Dimens.space10),
        _buildMenuItem(
          Iconsax.language_square,
          Strings.of(context)!.language,
          () => context.pushNamed(Routes.settings.name),
        ),
        SpacerV(value: Dimens.space12),
        _buildMenuItem(
          Iconsax.copyright,
          Strings.of(context)!.termAndCondition,
          () => context.pushNamed(Routes.termsAndConditions.name),
        ),
        SpacerV(value: Dimens.space12),
        _buildMenuItem(Iconsax.message, Strings.of(context)!.help, () {}),
        SpacerV(value: Dimens.space12),
        _buildMenuItem(
          Icons.phone_android_outlined,
          Strings.of(context)!.contactUs,
          () => launchUrl(
            Uri.parse(
              "mailto:cs@adfood.com?subject=Masalah terkait aplikasi&body=Keluhan ",
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildMenuItem(IconData icon, String title, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: Dimens.space12,
          vertical: Dimens.space12,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimens.space5),
          color: Palette.lightGrey,
        ),
        child: Row(
          children: [
            Icon(
              icon,
              size: Dimens.space16,
              color: Theme.of(context).primaryColor,
            ),
            SpacerH(value: Dimens.space10),
            Text(
              title,
              style: Theme.of(
                context,
              ).textTheme.titleSmall?.copyWith(fontWeight: regular),
            ),
          ],
        ),
      ),
    );
  }
}
