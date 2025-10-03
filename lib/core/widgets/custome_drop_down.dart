import 'package:flutter/material.dart';
import 'package:operation/core/core.dart';

class CustomDropdown<T> extends StatelessWidget {
  final String label;
  final List<T> items;
  final T? value;
  final String Function(T) itemLabel;
  final ValueChanged<T?> onChanged;

  final Axis axis;
  final double spacing;

  const CustomDropdown({
    super.key,
    required this.label,
    required this.items,
    required this.value,
    required this.itemLabel,
    required this.onChanged,
    this.axis = Axis.horizontal,
    this.spacing = 20,
  });

  @override
  Widget build(BuildContext context) {
    final children = <Widget>[
      Text(
        label,
        style: Theme.of(
          context,
        ).textTheme.bodyMedium?.copyWith(fontWeight: semiBold),
      ),
      if (axis == Axis.horizontal)
        SpacerH(value: spacing)
      else
        SpacerH(value: spacing),
      _buildDropdown(context),
    ];

    return axis == Axis.horizontal
        ? Row(mainAxisSize: MainAxisSize.min, children: children)
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: children,
          );
  }

  Widget _buildDropdown(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        final result = await showModalBottomSheet<T>(
          context: context,
          isScrollControlled: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(Dimens.space24),
            ),
          ),
          builder: (context) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: Dimens.space30,
                    right: Dimens.space24,
                    left: Dimens.space24,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        label,
                        style: Theme.of(
                          context,
                        ).textTheme.bodyMedium?.copyWith(fontWeight: semiBold),
                      ),
                      GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: Icon(
                          Icons.close,
                          color: Colors.black,
                          size: Dimens.space24,
                        ),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  child: Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: Dimens.space20,
                      vertical: Dimens.space10,
                    ),
                    child: ListView(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      children: items.map((item) {
                        final bool isSelected = value == item;
                        return InkWell(
                          onTap: () => Navigator.pop(context, item),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              vertical: Dimens.space8,
                              horizontal: Dimens.space16,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                Dimens.space8,
                              ),
                              color: isSelected
                                  ? Colors.grey.shade200
                                  : Colors.transparent,
                            ),
                            child: Text(
                              itemLabel(item),
                              style: Theme.of(context).textTheme.bodyMedium
                                  ?.copyWith(
                                    fontWeight: isSelected
                                        ? FontWeight.bold
                                        : FontWeight.normal,
                                  ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ],
            );
          },
        );

        if (result != null) {
          onChanged(result);
        }
      },
      child: Container(
        constraints: const BoxConstraints(minWidth: 180),
        padding: EdgeInsets.symmetric(
          horizontal: Dimens.space12,
          vertical: Dimens.space8,
        ),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(Dimens.space8),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Text(
                value != null ? itemLabel(value as T) : "Pilih",
                style: Theme.of(context).textTheme.bodyMedium,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Icon(Icons.unfold_more, size: Dimens.space24, color: Colors.grey),
          ],
        ),
      ),
    );
  }
}
