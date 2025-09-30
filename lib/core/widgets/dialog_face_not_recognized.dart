import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:operation/core/core.dart';
import 'package:operation/utils/utils.dart';

class DialogFaceNotRecognized extends StatelessWidget {
  const DialogFaceNotRecognized({super.key});

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
          Image.asset(
            Images.imgFaceNotRecognized,
            width: double.maxFinite,
            height: 302.w,
          ),
          SpacerV(value: Dimens.space16),
          Align(
            alignment: Alignment.center,
            child: Text(
              Strings.of(context)!.faceNotRecognized,
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
              Strings.of(context)!.descFaceNotRecognized,
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
            onPressed: () => context.back(),
          ),
          SpacerV(value: Dimens.space16),
          Button(
            width: double.maxFinite,
            title: Strings.of(context)!.registerFace,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
