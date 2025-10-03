import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';
import 'package:operation/core/core.dart';
import 'package:operation/features/auth/auth.dart';
import 'package:operation/utils/utils.dart';

class MenuNavbar extends StatefulWidget {
  const MenuNavbar({
    super.key,
    required this.dataMenu,
    required this.onIndexChanged,
  });

  final List<DataHelper> dataMenu;
  final Function(int) onIndexChanged;

  @override
  _MenuNavbarState createState() => _MenuNavbarState();
}

class _MenuNavbarState extends State<MenuNavbar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      selectedFontSize: Dimens.bodySmall,
      unselectedFontSize: Dimens.bodySmall,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Theme.of(context).primaryColor,
      unselectedItemColor: Colors.grey,
      selectedLabelStyle: TextStyle(height: Dimens.space2),
      unselectedLabelStyle: TextStyle(height: Dimens.space2),
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });

        // Update menu selection status
        for (final menu in widget.dataMenu) {
          menu.isSelected = widget.dataMenu.indexOf(menu) == index;
        }

        // Call callback to update parent
        widget.onIndexChanged(index);

        // Navigate to selected page
        _navigateToSelectedPage(widget.dataMenu[index].title!);
      },
      items: widget.dataMenu.map((menu) {
        return BottomNavigationBarItem(
          icon: _getImageIconForMenu(menu.title!),
          label: menu.title,
        );
      }).toList(),
    );
  }

  Widget _getImageIconForMenu(String title) {
    IconData iconData;
    final Color iconColor =
        _currentIndex ==
            widget.dataMenu.indexOf(
              widget.dataMenu.firstWhere((menu) => menu.title == title),
            )
        ? Theme.of(context).primaryColor
        : Colors.grey;

    if (title == Strings.of(context)!.home) {
      iconData = Iconsax.home_1;
    } else if (title == Strings.of(context)!.logout) {
      iconData = Iconsax.logout;
    } else {
      iconData = Icons.circle; // Default icon
    }

    return Icon(iconData, size: 24, color: iconColor);
  }

  void _navigateToSelectedPage(String title) {
    // Navigate based on selected menu title
    if (title == Strings.of(context)!.home) {
      context.goNamed(Routes.home.name);
    } else if (title == Strings.of(context)!.logout) {
      showDialog(
        context: context,
        builder: (_) =>
            DialogLogout(onPressed: () => context.read<LogoutCubit>().logout()),
      );
    }
  }
}
