import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:operation/core/core.dart';
import 'package:operation/utils/utils.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> with MainBoxMixin {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      context.goNamed(Routes.root.name);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Parent(
      backgroundColor: Theme.of(context).primaryColor,
      child: Center(
        child: Image.asset(
          Images.imgAdcorp,
          width: Dimens.space100 + Dimens.space50,
        ),
      ),
    );
  }
}
