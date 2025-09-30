import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:operation/core/core.dart';

class DialogRegisterFace extends StatelessWidget {
  final VoidCallback onPressed;

  const DialogRegisterFace({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            Images.imgFaceNotRecognized,
            width: double.maxFinite,
            height: 302.w,
          ),
          SpacerV(value: Dimens.space16),
          Align(
            alignment: Alignment.center,
            child: Text(
              Strings.of(context)!.dialogNewDevice,
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
              Strings.of(context)!.dialogNewDeviceDesc,
              textAlign: TextAlign.center,
              style: Theme.of(
                context,
              ).textTheme.titleSmall!.copyWith(fontWeight: regular),
            ),
          ),
          SpacerV(value: Dimens.space16),
          Button(
            width: double.maxFinite,
            title: Strings.of(context)!.registerFace,
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
