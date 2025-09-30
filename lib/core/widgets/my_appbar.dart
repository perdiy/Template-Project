import 'package:flutter/material.dart';
import 'package:operation/core/core.dart';

class MyAppBar {
  final String? title;
  final Color? backgroundColor;
  final double? elevation;
  final Widget? leading;
  final bool? centerTitle;
  final List<Widget>? actions;
  const MyAppBar({
    this.title,
    this.backgroundColor,
    this.elevation = 0,
    this.leading,
    this.centerTitle = true,
    this.actions,
  });

  PreferredSize call(BuildContext context) => PreferredSize(
    preferredSize: const Size.fromHeight(kToolbarHeight),
    child: AppBar(
      backgroundColor: backgroundColor ?? Palette.background,
      elevation: elevation ?? 0,
      title: Text(
        title ?? '',
        style: Theme.of(
          context,
        ).textTheme.labelLarge?.copyWith(fontWeight: semiBold),
      ),
      centerTitle: centerTitle,
      leading: leading,
      shadowColor: Colors.black.withAlpha(100),
      actions: actions,
    ),
  );
}
