import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:operation/core/core.dart';
import 'package:operation/features/features.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key, required this.child});

  final Widget child;

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    context.read<MainCubit>().initMenu(context);
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvokedWithResult: (didPop, result) {
        context.read<MainCubit>().onBackPressed(context, _scaffoldKey);
      },
      child: Parent(
        scaffoldKey: _scaffoldKey,
        bottomNavigation: _buildBottomNavigationBar(),
        child: widget.child,
      ),
    );
  }

  Widget _buildBottomNavigationBar() {
    return BlocBuilder<MainCubit, MainState>(
      builder: (context, state) {
        final dataMenus = context.read<MainCubit>().dataMenus;
        return MenuNavbar(
          dataMenu: dataMenus,
          onIndexChanged: (index) {
            context.read<MainCubit>().updateIndex(index);
          },
        );
      },
    );
  }
}
