import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:operation/core/core.dart';
import 'package:operation/utils/utils.dart';

class DialogLocationPermission extends StatelessWidget {
  final VoidCallback? onPressed;

  const DialogLocationPermission({super.key, this.onPressed});

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
            Images.imgLocationPermission,
            width: 235.w,
            height: 140.w,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              Strings.of(context)!.dialogLocationPermission,
              textAlign: TextAlign.center,
              style: Theme.of(
                context,
              ).textTheme.labelLarge?.copyWith(fontWeight: semiBold),
            ),
          ),
          SpacerV(value: Dimens.space16),
          Button(
            width: double.maxFinite,
            title: Strings.of(context)!.turnOnLocation,
            onPressed: () {
              context.back();
              onPressed?.call();
            },
          ),
        ],
      ),
    );
  }
}
