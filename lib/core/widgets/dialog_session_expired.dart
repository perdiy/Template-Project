import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:operation/core/core.dart';

class DialogSessionExpired extends StatelessWidget {
  final VoidCallback onPressed;

  const DialogSessionExpired({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(Images.imgSessionExpired, width: 230.w, height: 200.w),
          SpacerV(value: Dimens.space16),
          Align(
            alignment: Alignment.center,
            child: Text(
              Strings.of(context)!.sessionExpired,
              textAlign: TextAlign.center,
              style: Theme.of(
                context,
              ).textTheme.labelLarge?.copyWith(fontWeight: semiBold),
            ),
          ),
          SpacerV(value: Dimens.space16),
          Align(
            alignment: Alignment.center,
            child: Text(
              Strings.of(context)!.sessionExpiredDesc,
              textAlign: TextAlign.center,
              style: Theme.of(
                context,
              ).textTheme.titleSmall!.copyWith(fontWeight: regular),
            ),
          ),
          SpacerV(value: Dimens.space16),
          Button(
            width: double.maxFinite,
            title: Strings.of(context)!.login,
            onPressed: () {
              context.pop();
              onPressed();
            },
          ),
        ],
      ),
    );
  }
}
