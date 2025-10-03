import 'package:flutter/material.dart';
import 'package:operation/core/core.dart';

class CardStockLine extends StatelessWidget {
  final String stock;
  final VoidCallback? onTap;
  const CardStockLine({super.key, required this.stock, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(Dimens.space12),
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(5),
        padding: EdgeInsets.symmetric(
          horizontal: Dimens.space16,
          vertical: Dimens.space20,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(Dimens.space15),
          border: Border.all(color: Colors.grey.shade200),

          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 3,
              offset: Offset(1, 2),
              spreadRadius: 0.2,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Stock Linen All Location',
                  style: Theme.of(
                    context,
                  ).textTheme.bodyMedium?.copyWith(fontWeight: semiBold),
                ),
                Text(
                  'Icon',
                  style: Theme.of(
                    context,
                  ).textTheme.bodyMedium?.copyWith(fontWeight: semiBold),
                ),
              ],
            ),
            SpacerV(value: Dimens.space10),
            Text(
              stock,
              style: Theme.of(
                context,
              ).textTheme.headlineLarge?.copyWith(fontWeight: semiBold),
            ),
            Text(
              'Description',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(),
            ),
          ],
        ),
      ),
    );
  }
}
