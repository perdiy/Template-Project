import 'package:flutter/material.dart';
import 'package:operation/core/core.dart';

class LinenStockChart extends StatelessWidget {
  final List<String> locations;
  final List<int> stocks;
  final double? percentageChange;
  final String? subtitle;

  const LinenStockChart({
    super.key,
    required this.locations,
    required this.stocks,
    this.percentageChange,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    final maxStock = stocks.reduce((a, b) => a > b ? a : b);

    return Container(
      margin: EdgeInsets.all(Dimens.space5),
      decoration: BoxDecoration(
        color: Palette.background,
        borderRadius: BorderRadius.circular(Dimens.space15),
        boxShadow: const [
          BoxShadow(color: Colors.black26, spreadRadius: 0.5, blurRadius: 1),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: const BoxDecoration(
              border: Border(bottom: BorderSide(color: Palette.greyText)),
            ),
            padding: EdgeInsets.symmetric(
              horizontal: Dimens.space15,
              vertical: Dimens.space12,
            ),
            child: Row(
              children: [
                Icon(
                  Icons.bar_chart,
                  color: Palette.greyText,
                  size: Dimens.space20,
                ),
                SpacerH(value: Dimens.space8),

                Text(
                  "Bar Chart",
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(),
                ),
              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: Dimens.space24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SpacerV(value: Dimens.space22),
                Text(
                  "Stock Linen All Location",
                  style: Theme.of(
                    context,
                  ).textTheme.titleLarge?.copyWith(fontWeight: semiBold),
                ),
                SpacerV(value: Dimens.space24),

                ...List.generate(locations.length, (index) {
                  return Padding(
                    padding: EdgeInsets.only(bottom: Dimens.space16),
                    child: Row(
                      children: [
                        Expanded(
                          child: LayoutBuilder(
                            builder: (context, constraints) {
                              final barWidth =
                                  (stocks[index] / maxStock) *
                                  constraints.maxWidth;
                              return Row(
                                children: [
                                  Container(
                                    height: Dimens.space30,
                                    width: barWidth,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFF5DAFB5),
                                      borderRadius: BorderRadius.circular(
                                        Dimens.space4,
                                      ),
                                    ),
                                    alignment: Alignment.centerLeft,
                                    padding: EdgeInsets.only(
                                      left: Dimens.space12,
                                    ),
                                    child: Text(
                                      locations[index],
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium
                                          ?.copyWith(color: Palette.background),
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
                        SpacerH(value: Dimens.space12),

                        SizedBox(
                          width: Dimens.space40,
                          child: Text(
                            stocks[index].toString(),
                            style: Theme.of(
                              context,
                            ).textTheme.bodyMedium?.copyWith(),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
                SpacerV(value: Dimens.space14),
                Row(
                  children: [
                    Text(
                      percentageChange != null
                          ? "Stock is ${percentageChange! > 0 ? 'up' : 'down'} ${percentageChange!.abs()}% this month"
                          : "Stock is up 5.2% this month",
                      style: Theme.of(
                        context,
                      ).textTheme.bodyMedium?.copyWith(fontWeight: semiBold),
                    ),
                    SpacerH(value: Dimens.space8),
                    Icon(
                      Icons.trending_up,
                      size: Dimens.space14,
                      color: Colors.black,
                    ),
                  ],
                ),
                SpacerV(value: Dimens.space6),

                Text(
                  subtitle ?? "Showing stock linen at all locations",
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(),
                ),
                SpacerV(value: Dimens.space36),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
