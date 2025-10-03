import 'package:flutter/material.dart';
import 'package:operation/core/core.dart';

class Button extends StatelessWidget {
  final String title;
  final VoidCallback? onPressed;
  final double? width;
  final double? height;
  final Color? color;
  final Color? titleColor;
  final double? fontSize;
  final Color? splashColor;
  final IconData? icon;
  final double? borderRadius;
  final Color? borderColor;
  final double? borderWidth;

  const Button({
    super.key,
    required this.title,
    required this.onPressed,
    this.width,
    this.height,
    this.color,
    this.titleColor,
    this.fontSize,
    this.splashColor,
    this.icon,
    this.borderRadius,
    this.borderColor,
    this.borderWidth,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: color ?? Theme.of(context).primaryColor,
          foregroundColor: Theme.of(
            context,
          ).extension<FungsitamaColors>()!.buttonText,
          disabledBackgroundColor: Theme.of(
            context,
          ).extension<FungsitamaColors>()!.buttonText?.withValues(alpha: 0.5),
          padding: EdgeInsets.symmetric(
            horizontal: Dimens.space24,
            vertical: Dimens.space12,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(borderRadius ?? Dimens.buttonRadius),
            ),
            side: BorderSide(
              color: borderColor ?? Colors.transparent,
              width: borderWidth ?? 0,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null) Icon(icon, color: titleColor ?? Palette.white),
            const SpacerH(),
            Text(
              title,
              style: Theme.of(context).textTheme.labelLarge?.copyWith(
                color: titleColor ?? Palette.white,
                fontSize: fontSize,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
