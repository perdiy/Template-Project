import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:operation/core/core.dart';

class DialogAttendanceFail extends StatelessWidget {
  final VoidCallback onPressed;

  const DialogAttendanceFail({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(Images.imgFail, width: 90.w),
          SpacerV(value: Dimens.space16),
          Align(
            alignment: Alignment.center,
            child: Text(
              Strings.of(context)!.titleAttendanceUnsuccessful,
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
              Strings.of(context)!.descAttendanceUnsuccessful,
              textAlign: TextAlign.center,
              style: Theme.of(
                context,
              ).textTheme.titleSmall!.copyWith(fontWeight: regular),
            ),
          ),
          SpacerV(value: Dimens.space16),
          ButtonBorder(
            width: double.maxFinite,
            title: Strings.of(context)!.cancel,
            onPressed: () => context.goNamed(Routes.root.name),
          ),
          SpacerV(value: Dimens.space16),
          Button(
            width: double.maxFinite,
            title: Strings.of(context)!.tryAgain,
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
