import 'package:flutter/material.dart';
import 'package:operation/core/core.dart';

class Button extends StatelessWidget {
  final String title;
  final VoidCallback? onPressed;
  final double? width;
  final Color? color;
  final Color? titleColor;
  final double? fontSize;
  final Color? splashColor;
  final IconData? icon;

  const Button({
    super.key,
    required this.title,
    required this.onPressed,
    this.width,
    this.color,
    this.titleColor,
    this.fontSize,
    this.splashColor,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
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
              Radius.circular(Dimens.buttonRadius),
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
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
