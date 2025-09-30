import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:operation/core/core.dart';
import 'package:operation/utils/utils.dart';

class DialogAttendanceInSuccess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: GestureDetector(
              onTap: () => context.back(),
              child: const Icon(Icons.close, color: Palette.text),
            ),
          ),
          Image.asset(Images.imgCheck, width: 90.w),
          SpacerV(value: Dimens.space16),
          Align(
            alignment: Alignment.center,
            child: Text(
              Strings.of(context)!.titleAttendanceSuccess,
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
              Strings.of(context)!.descAttendanceInSuccess,
              textAlign: TextAlign.center,
              style: Theme.of(
                context,
              ).textTheme.titleSmall!.copyWith(fontWeight: regular),
            ),
          ),
          SpacerV(value: Dimens.space16),
          Button(
            width: double.maxFinite,
            title: Strings.of(context)!.done,
            onPressed: () => context.goNamed(Routes.root.name),
          ),
        ],
      ),
    );
  }
}
