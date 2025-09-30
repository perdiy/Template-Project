import 'package:flutter/material.dart';
import 'package:operation/core/core.dart';

class UnderConstructionPage extends StatelessWidget {
  const UnderConstructionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Parent(
      appBar: MyAppBar(
        title: Strings.of(context)!.underDevelopmentTitle,
        elevation: 2,
      ).call(context),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage(Images.imgUnderConstruction),
              width: Dimens.underConstruction,
            ),
            SpacerV(value: Dimens.space20),
            Text(
              Strings.of(context)!.underDevelopmentDesc,
              style: Theme.of(
                context,
              ).textTheme.titleMedium?.copyWith(fontWeight: semiBold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
