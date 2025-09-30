import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:operation/core/core.dart';

class BottomsheetResetPasswordSuccess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.all(Dimens.space24),
      decoration: BoxDecoration(
        color: Palette.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(Dimens.space24),
          topRight: Radius.circular(Dimens.space24),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              Strings.of(context)!.successfully,
              style: Theme.of(
                context,
              ).textTheme.titleLarge?.copyWith(fontWeight: semiBold),
            ),
          ),
          SpacerV(value: Dimens.space24),
          Image.asset(
            Images.imgSuccessfully,
            width: double.maxFinite,
            height: 205,
          ),
          SpacerV(value: Dimens.space24),
          Text(
            Strings.of(context)!.descSuccessResetPassword,
            style: Theme.of(
              context,
            ).textTheme.bodySmall?.copyWith(fontWeight: medium),
          ),
          SpacerV(value: Dimens.space24),
          Button(
            width: double.maxFinite,
            title: Strings.of(context)!.goToHome,
            onPressed: () => context.goNamed(Routes.root.name),
          ),
        ],
      ),
    );
  }
}
