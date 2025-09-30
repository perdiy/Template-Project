import 'package:flutter/material.dart';
import 'package:operation/core/core.dart';

class DropDown<T> extends StatefulWidget {
  const DropDown({
    super.key,
    required this.value,
    required this.items,
    this.label,
    required this.onChanged,
    this.labelIsVisible = false,
    this.prefixIcon,
    this.isRequired = false,
  });
  final T value;
  final List<DropdownMenuItem<T>> items;
  final bool labelIsVisible;
  final String? label;
  final ValueChanged<T?>? onChanged;
  final Widget? prefixIcon;
  final bool? isRequired;

  @override
  _DropDownState<T> createState() => _DropDownState();
}

class _DropDownState<T> extends State<DropDown<T>> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.labelIsVisible) ...{
          RichText(
            text: TextSpan(
              text: widget.label,
              style: Theme.of(
                context,
              ).textTheme.titleSmall?.copyWith(fontWeight: medium),
              children: widget.isRequired!
                  ? [
                      TextSpan(
                        text: " *",
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontWeight: medium,
                          color: Palette.redLatte,
                        ),
                      ),
                    ]
                  : [],
            ),
          ),
        },
        SizedBox(height: Dimens.space8),
        ButtonTheme(
          key: widget.key,
          alignedDropdown: true,
          padding: EdgeInsets.zero,
          child: DropdownButtonFormField<T>(
            isExpanded: true,
            dropdownColor: Palette.muted,
            icon: const Icon(Icons.arrow_drop_down),
            decoration: InputDecoration(
              alignLabelWithHint: true,
              isDense: true,
              isCollapsed: true,
              filled: true,
              fillColor: Palette.muted,
              prefixIcon: widget.prefixIcon != null
                  ? Padding(
                      padding: EdgeInsets.only(left: Dimens.space12),
                      child: widget.prefixIcon,
                    )
                  : null,
              prefixIconConstraints: BoxConstraints(
                minHeight: Dimens.space24,
                maxHeight: Dimens.space24,
              ),
              contentPadding: EdgeInsets.symmetric(vertical: Dimens.space12),
              enabledBorder: OutlineInputBorder(
                gapPadding: 0,
                borderRadius: BorderRadius.circular(Dimens.space6),
                borderSide: BorderSide(
                  color: Theme.of(context).extension<FungsitamaColors>()!.card!,
                ),
              ),
              border: OutlineInputBorder(
                gapPadding: 0,
                borderRadius: BorderRadius.circular(Dimens.space6),
                borderSide: BorderSide(color: Theme.of(context).cardColor),
              ),
              disabledBorder: OutlineInputBorder(
                gapPadding: 0,
                borderRadius: BorderRadius.circular(Dimens.space6),
                borderSide: BorderSide(color: Theme.of(context).cardColor),
              ),
              focusedErrorBorder: OutlineInputBorder(
                gapPadding: 0,
                borderRadius: BorderRadius.circular(Dimens.space6),
                borderSide: BorderSide(
                  color: Theme.of(context).extension<FungsitamaColors>()!.red!,
                ),
              ),
              errorBorder: OutlineInputBorder(
                gapPadding: 0,
                borderRadius: BorderRadius.circular(Dimens.space6),
                borderSide: BorderSide(
                  color: Theme.of(context).extension<FungsitamaColors>()!.red!,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                gapPadding: 0,
                borderRadius: BorderRadius.circular(Dimens.space6),
                borderSide: BorderSide(color: Theme.of(context).primaryColor),
              ),
            ),
            value: widget.value,
            items: widget.items,
            onChanged: widget.onChanged,
          ),
        ),
      ],
    );
  }
}
