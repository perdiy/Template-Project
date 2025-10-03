import 'package:flutter/material.dart';
import 'package:operation/core/app_route.dart';
import 'package:operation/core/resources/resources.dart';

class HomeMenuItem {
  final String title;
  final String icon;
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
    title: 'Dashboard',
    icon: Images.icDashboard,
    routeName: Routes.dashboard.name,
    gradient: [Palette.menuColors, Palette.menuColors],
  ),
  HomeMenuItem(
    title: 'Bulk Counting',
    icon: Images.icBulk,
    routeName: Routes.bulkCounting.name,
    gradient: [Palette.menuColors, Palette.menuColors],
  ),
  HomeMenuItem(
    title: 'Group Search',
    icon: Images.icGroup,
    routeName: Routes.groupSearch.name,
    gradient: [Palette.menuColors, Palette.menuColors],
  ),
  HomeMenuItem(
    title: 'Transfer',
    icon: Images.icTransfer,
    routeName: Routes.transfer.name,
    gradient: [Palette.menuColors, Palette.menuColors],
  ),
  HomeMenuItem(
    title: 'Receiving',
    icon: Images.icReceiving,
    routeName: Routes.receiving.name,
    gradient: [Palette.menuColors, Palette.menuColors],
  ),
  HomeMenuItem(
    title: 'My Profile',
    icon: Images.icMyprofile,
    routeName: Routes.profile.name,
    gradient: [Palette.menuColors, Palette.menuColors],
  ),
];
