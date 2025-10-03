import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:operation/core/core.dart';
import 'package:operation/features/home/presentation/widgets/home_menu_item.dart';

class MenuCard extends StatefulWidget {
  final HomeMenuItem item;
  final void Function()? onTap;

  const MenuCard({super.key, required this.item, this.onTap});

  @override
  State<MenuCard> createState() => _MenuCardState();
}

class _MenuCardState extends State<MenuCard> {
  bool _pressed = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final item = widget.item;
    final isDark = theme.brightness == Brightness.dark;

    return AnimatedScale(
      duration: const Duration(milliseconds: 120),
      scale: _pressed ? 0.97 : 1.0,
      child: Opacity(
        opacity: item.enabled ? 1 : 0.6,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: item.enabled
                ? () async {
                    setState(() => _pressed = true);
                    HapticFeedback.selectionClick();
                    await Future.delayed(const Duration(milliseconds: 80));
                    setState(() => _pressed = false);
                    widget.onTap?.call();
                  }
                : null,
            borderRadius: BorderRadius.circular(6.r),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.r),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: item.gradient,
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                    offset: Offset(1, 2),
                    spreadRadius: 0.2,
                  ),
                ],
              ),
              child: Column(
                children: [
                  // Glass overlay
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                      color: (isDark
                          ? Colors.white12
                          : Colors.white.withValues(alpha: 0.15)),
                      border: Border.all(
                        color: Colors.white.withValues(alpha: 0.3),
                        width: 1,
                      ),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.all(Dimens.space12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        Image.asset(
                          item.icon,
                          width: Dimens.space32,
                          height: Dimens.space32,
                        ),
                        SizedBox(height: 8.h),
                        Text(
                          item.title,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.labelMedium?.copyWith(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.1,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
