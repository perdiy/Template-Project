import 'package:flutter/material.dart';
import 'package:operation/core/core.dart';
import 'package:operation/utils/utils.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Parent(
      appBar: MyAppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () => context.back(),
          icon: const Icon(Icons.arrow_back_ios_new, color: Palette.primary),
        ),
      ).call(context),
      child: const Center(child: Text('Notification Page')),
    );
  }
}
