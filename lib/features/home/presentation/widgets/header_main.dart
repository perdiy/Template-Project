import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:operation/core/core.dart';

class HeadeMain extends StatelessWidget {
  final String name;
  final String id;
  final String img;
  final String jab;
  const HeadeMain({
    super.key,
    required this.name,
    required this.id,
    required this.img,
    required this.jab,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 5.w, left: 20.w, top: 80.h, bottom: 80.h),
      child: Row(
        children: [
          ClipOval(
            child: Container(color: Colors.amber, height: 50.h, width: 50.w),
          ),
          SizedBox(width: 8.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Agung Aji Winoto",
                style: Theme.of(
                  context,
                ).textTheme.titleSmall?.copyWith(fontWeight: semiBold),
              ),
              SizedBox(height: 3.h),
              Text(
                "06255117281 - IT Staff",
                style: Theme.of(
                  context,
                ).textTheme.titleSmall?.copyWith(fontWeight: light),
              ),
            ],
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_none_rounded,
              color: Colors.white,
              size: 25.r,
            ),
          ),
        ],
      ),
    );
  }
}
