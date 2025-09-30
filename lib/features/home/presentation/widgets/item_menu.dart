import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemMenu extends StatelessWidget {
  final String title;
  final String assetIcon;
  final VoidCallback? onTap;

  const ItemMenu({
    super.key,
    required this.title,
    required this.assetIcon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(12.r),
      onTap: onTap,
      child: Container(
        width: 80.w,
        padding: EdgeInsets.all(12.r),
        decoration: BoxDecoration(
          color: Colors.grey.withValues(alpha: 0.2),
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(color: Colors.red, height: 35.h, width: 35.w),
            // Image.asset(assetIcon, height: 36.h, fit: BoxFit.contain),
            SizedBox(height: 8.h),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 10.sp,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
