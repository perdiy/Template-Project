import 'package:flutter/material.dart';

class RadioButton<T> extends StatelessWidget {
  final T value;
  final T groupValue;
  final String label;
  final ValueChanged<T?> onChanged;
  final Color? activeColor;
  final Color? labelColor;
  final TextStyle? labelStyle;

  const RadioButton({
    super.key,
    required this.value,
    required this.groupValue,
    required this.label,
    required this.onChanged,
    this.activeColor,
    this.labelColor,
    this.labelStyle,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return InkWell(
      onTap: () => onChanged(value),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Radio<T>(
            value: value,
            groupValue: groupValue,
            onChanged: onChanged,
            activeColor: activeColor ?? theme.primaryColor,
          ),
          Flexible(
            child: Text(
              label,
              style: labelStyle ??
                  theme.textTheme.bodyMedium?.copyWith(
                    color: labelColor ?? theme.textTheme.bodyMedium?.color,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
