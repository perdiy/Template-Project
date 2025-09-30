import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:operation/core/app_route.dart';

class HomeMenuItem {
  final String title;
  final IconData icon;
  final String routeName;
  final List<Color> gradient;
  final int? badge; // optional
  final bool enabled; // optional

  HomeMenuItem({
    required this.title,
    required this.icon,
    required this.routeName,
    required this.gradient,
    this.badge,
    this.enabled = true,
  });
}

final List<HomeMenuItem> kMenuItems = [
  HomeMenuItem(
    title: 'Handover Item',
    icon: Iconsax.export_3,
    routeName: Routes.handoverItem.name, // ganti sesuai route lo
    gradient: [const Color(0xFF84FAB0), const Color(0xFF8FD3F4)],
  ),
  HomeMenuItem(
    title: 'Supply Item',
    icon: Iconsax.truck_fast,
    routeName: Routes.supplyItem.name, // ganti sesuai route lo
    gradient: [const Color(0xFFFFC371), const Color(0xFFFF5F6D)],
  ),
];
