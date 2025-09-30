import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:operation/core/core.dart';

class DialogFakeGps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(Images.imgOutsideArea, width: 234.w, height: 224.w),
          SpacerV(value: Dimens.space16),
          Align(
            alignment: Alignment.center,
            child: Text(
              Strings.of(context)!.dialogFakeGps,
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
              Strings.of(context)!.dialogFakeGpsDesc,
              textAlign: TextAlign.center,
              style: Theme.of(
                context,
              ).textTheme.titleSmall!.copyWith(fontWeight: regular),
            ),
          ),
        ],
      ),
    );
  }
}
