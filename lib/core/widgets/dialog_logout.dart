import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:operation/core/core.dart';

class DialogLogout extends StatelessWidget {
  final VoidCallback onPressed;

  const DialogLogout({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        Strings.of(context)!.logout,
        style: Theme.of(context).textTheme.bodyLarge,
      ),
      content: Text(
        Strings.of(context)!.logoutDesc,
        style: Theme.of(context).textTheme.bodyMedium,
      ),
      actions: [
        TextButton(
          onPressed: () => context.pop(),
          child: Text(
            Strings.of(context)!.cancel,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Theme.of(context).extension<FungsitamaColors>()!.subtitle,
            ),
          ),
        ),
        TextButton(
          onPressed: () {
            context.pop();
            onPressed();
          },
          child: Text(
            Strings.of(context)!.yes,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Theme.of(context).extension<FungsitamaColors>()!.red,
            ),
          ),
        ),
      ],
    );
  }
}
