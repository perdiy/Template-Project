import 'package:flutter/material.dart';
import 'package:operation/core/core.dart';
import 'package:operation/utils/utils.dart';

class DialogUpdate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: GestureDetector(
              onTap: () => context.back(),
              child: const Icon(Icons.close, color: Palette.text),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              Strings.of(context)!.dialogTitleUpdate,
              textAlign: TextAlign.center,
              style: Theme.of(
                context,
              ).textTheme.titleSmall!.copyWith(fontWeight: regular),
            ),
          ),
          SpacerV(value: Dimens.space16),
          Align(
            alignment: Alignment.center,
            child: Text(
              Strings.of(context)!.dialogDescUpdate,
              textAlign: TextAlign.center,
              style: Theme.of(
                context,
              ).textTheme.titleSmall!.copyWith(fontWeight: regular),
            ),
          ),
          SpacerV(value: Dimens.space16),
          Button(
            width: double.maxFinite,
            title: Strings.of(context)!.update,
            onPressed: () => context.back(),
          ),
        ],
      ),
    );
  }
}
