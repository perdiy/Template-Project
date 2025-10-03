import 'package:flutter/material.dart';
import 'package:operation/core/core.dart';

class ItemQtyTable extends StatelessWidget {
  final List<ItemData> items;
  final bool? showTotal;
  final bool? submitBtn;
  final bool? clearBtn;
  final int? tottalread;
  final VoidCallback? onSubmit;
  final VoidCallback? onClear;
  final String? itemName;
  final String? qtyName;

  const ItemQtyTable({
    super.key,
    required this.items,
    this.showTotal = false,
    this.tottalread = 0,
    this.clearBtn = false,
    this.submitBtn = false,
    this.onSubmit,
    this.onClear,
    this.itemName,
    this.qtyName,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Table wrapper
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade300, width: 1),
            borderRadius: BorderRadius.circular(Dimens.space8),
          ),
          child: Table(
            border: TableBorder(
              horizontalInside: BorderSide(
                color: Colors.grey.shade300,
                width: 1,
              ),
            ),
            children: [
              // Header
              TableRow(
                children: [
                  Padding(
                    padding: EdgeInsets.all(Dimens.space12),
                    child: Text(
                      itemName ?? 'Item',
                      style: Theme.of(
                        context,
                      ).textTheme.bodyMedium?.copyWith(fontWeight: semiBold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(Dimens.space12),
                    child: Text(
                      qtyName ?? 'Qty',
                      style: Theme.of(
                        context,
                      ).textTheme.bodyMedium?.copyWith(fontWeight: semiBold),
                      textAlign: TextAlign.right,
                    ),
                  ),
                ],
              ),
              // Data rows
              ...items.map(
                (item) => TableRow(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(Dimens.space12),
                      child: Text(
                        item.name,
                        style: Theme.of(
                          context,
                        ).textTheme.bodyMedium?.copyWith(),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(Dimens.space12),
                      child: Text(
                        item.qty.toString(),
                        style: Theme.of(
                          context,
                        ).textTheme.bodyMedium?.copyWith(),
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        // Total Section
        if (showTotal == true) ...[
          SpacerV(value: Dimens.space12),
          Row(
            children: [
              Text(
                'Total read',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(),
              ),
              SpacerH(value: Dimens.space12),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: Dimens.space16,
                  vertical: Dimens.space6,
                ),
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(Dimens.space6),
                ),
                child: Text(
                  "$tottalread",
                  style: Theme.of(
                    context,
                  ).textTheme.bodyMedium?.copyWith(fontWeight: semiBold),
                ),
              ),
            ],
          ),
        ],

        // Buttons
        if (submitBtn == true || clearBtn == true) ...[
          SpacerV(value: Dimens.space20),
          Row(
            children: [
              if (submitBtn == true)
                Expanded(
                  child: Button(
                    title: Strings.of(context)!.submit,
                    width: double.maxFinite,
                    onPressed: onSubmit,
                  ),
                ),
              if (submitBtn == true && clearBtn == true)
                SpacerH(value: Dimens.space20),
              if (clearBtn == true)
                Expanded(
                  child: Button(
                    title: Strings.of(context)!.clear,
                    width: double.maxFinite,
                    borderColor: Palette.primary,
                    borderWidth: 1,
                    onPressed: onClear,
                    color: Palette.background,
                    titleColor: Palette.popoverForeground,
                  ),
                ),
            ],
          ),
        ],
      ],
    );
  }
}

class ItemData {
  final String name;
  final int qty;
  ItemData({required this.name, required this.qty});
}
