import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:operation/features/features.dart';

class HomePageCopy extends StatefulWidget {
  const HomePageCopy({super.key});

  @override
  State<HomePageCopy> createState() => _HomePageCopyState();
}

class _HomePageCopyState extends State<HomePageCopy> {
  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> menus = [
      {"title": "Supply Item", "icon": "assets/icons/leave.png"},
      {"title": "Handover Item", "icon": "assets/icons/attendance.png"},
    ];
    return Scaffold(
      backgroundColor: const Color(0xFF167B91),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: IntrinsicHeight(
                child: Column(
                  children: [
                    const HeadeMain(name: '', id: '', img: '', jab: ''),
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(20.r),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25.r),
                            topRight: Radius.circular(25.r),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Wrap(
                              spacing: 10,
                              runSpacing: 16,
                              children: menus
                                  .map(
                                    (menu) => ItemMenu(
                                      title: menu["title"]!,
                                      assetIcon: menu["icon"]!,
                                    ),
                                  )
                                  .toList(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
