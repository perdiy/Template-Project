import 'package:flutter/material.dart';
import 'package:operation/core/core.dart';
import 'package:shimmer/shimmer.dart';

class PlaceholderProfile extends StatelessWidget {
  final double? sizePic;
  const PlaceholderProfile({super.key, this.sizePic});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Shimmer.fromColors(
              baseColor: Colors.black26,
              highlightColor: Colors.black54,
              child: Container(
                width: Dimens.space100,
                height: Dimens.space16,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimens.space4),
                  color: Colors.black26,
                ),
              ),
            ),
          ],
        ),
        const Spacer(),
        Shimmer.fromColors(
          baseColor: Colors.black26,
          highlightColor: Colors.black54,
          child: Container(
            width: Dimens.space24,
            height: Dimens.space24,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimens.space4),
              color: Colors.black38,
            ),
          ),
        ),
      ],
    );
  }
}
