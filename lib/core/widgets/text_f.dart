import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:operation/core/core.dart';
import 'package:operation/utils/utils.dart';

class TextF extends StatefulWidget {
  const TextF({
    super.key,
    this.controller,
    required this.label,
    this.errorMessage,
    this.isValid = false,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText,
    this.keyboardType,
    this.inputFormatters,
    this.enabled = true,
    this.textInputAction,
    this.onTap,
    this.autoFillHints,
    this.description,
    this.labelTextStyle,
    this.noErrorSpace = false,
    this.focusNode,
    this.backgroundColor,
    this.hint,
    this.validatorListener,
    this.height,
    this.textStyle,
    this.maxLines = 1,
    this.semantic,
    this.border = true,
    this.isRequired = false,
    this.readOnly = false,
  });

  final TextEditingController? controller;
  final bool isValid;
  final String label;
  final String? errorMessage;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool? obscureText;
  final bool enabled;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final List<TextInputFormatter>? inputFormatters;
  final VoidCallback? onTap;
  final Function(String)? validatorListener;
  final List<String>? autoFillHints;
  final String? description;
  final TextStyle? labelTextStyle;
  final TextStyle? textStyle;
  final bool noErrorSpace;
  final FocusNode? focusNode;
  final Color? backgroundColor;
  final String? hint;
  final double? height;
  final int maxLines;
  final String? semantic;
  final bool? border;
  final bool? isRequired;
  final bool? readOnly;

  @override
  TextFState createState() => TextFState();
}

class TextFState extends State<TextF> {
  late FocusNode _fn;
  bool _isFocus = false;
  bool _isError = false;
  bool _isFirstLoad = true;

  final _debouncer = Debouncer();

  @override
  void initState() {
    super.initState();
    _fn = widget.focusNode ?? FocusNode();
    _fn.addListener(() {
      setState(() {
        _isFocus = _fn.hasFocus;

        /// Check if focus changed
        if (!_isFocus) {
          _isError = !widget.isValid;
        }
      });
    });
  }

  void _updateStatus() {
    if (_isFirstLoad) {
      _isFirstLoad = false;
    } else {
      if (_isFocus) {
        _isError = !widget.isValid;
      }
    }
  }

  void setIsError({required bool isError}) {
    setState(() {
      if (_isFirstLoad) {
        _isFirstLoad = false;
      } else {
        _isError = isError;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    _updateStatus();

    return GestureDetector(
      onTap: widget.onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              text: widget.label,
              style: Theme.of(context).textTheme.titleSmall,
              children: widget.isRequired == true
                  ? [
                      TextSpan(
                        text: " *",
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontWeight: medium,
                          color: Theme.of(
                            context,
                          ).extension<FungsitamaColors>()!.red,
                        ),
                      ),
                    ]
                  : [],
            ),
          ),
          SpacerV(value: Dimens.space8),
          Stack(
            children: [
              Container(
                width: double.maxFinite,
                height: widget.maxLines > 1
                    ? (widget.height ?? Dimens.textField / 2) * widget.maxLines
                    : widget.height ?? Dimens.textField,
                decoration: BoxDecoration(
                  color: widget.enabled
                      ? widget.backgroundColor ??
                            Theme.of(
                              context,
                            ).extension<FungsitamaColors>()!.background
                      : Palette.muted,
                  border: widget.border == true
                      ? Border.all(
                          color: _isError
                              ? Theme.of(
                                  context,
                                ).extension<FungsitamaColors>()!.red!
                              : Theme.of(
                                  context,
                                ).extension<FungsitamaColors>()!.shadow!,
                        )
                      : null,
                  borderRadius: BorderRadius.circular(Dimens.space8),
                ),
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(bottom: Dimens.space4),
              ),
              Positioned(
                top: Dimens.space5,
                left: Dimens.zero,
                right: Dimens.zero,
                bottom: Dimens.space4,
                child: _textFormField,
              ),
            ],
          ),
          if (widget.description != null && !_isError)
            Padding(
              padding: EdgeInsets.only(top: Dimens.space6),
              child: Text(
                widget.description!,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: _isError
                      ? Theme.of(context).extension<FungsitamaColors>()!.red!
                      : Theme.of(context).extension<FungsitamaColors>()!.shadow,
                ),
              ),
            ),
          if (!widget.noErrorSpace) ...[
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              child: _isError && widget.errorMessage != null
                  ? Padding(
                      padding: EdgeInsets.only(
                        left: Dimens.space16,
                        top: Dimens.space4,
                      ),
                      child: Text(
                        widget.errorMessage ?? "",
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Theme.of(
                            context,
                          ).extension<FungsitamaColors>()!.red,
                        ),
                      ),
                    )
                  : const SizedBox.shrink(),
            ),
            const SpacerV(),
          ],
        ],
      ),
    );
  }

  Widget get _textFormField {
    return Semantics(
      label: widget.semantic,
      child: TextFormField(
        readOnly: widget.readOnly ?? false,
        autofillHints: widget.autoFillHints,
        textInputAction: widget.textInputAction,
        onFieldSubmitted: (_) => FocusScope.of(context).nextFocus(),
        enabled: widget.enabled,
        inputFormatters: widget.inputFormatters,
        keyboardType: widget.keyboardType,
        controller: widget.controller,
        obscureText: widget.obscureText ?? false,
        focusNode: _fn,
        maxLines: widget.maxLines,
        onTap: widget.onTap,
        style: widget.textStyle ?? Theme.of(context).textTheme.bodyMedium500,
        decoration: InputDecoration(
          isDense: true,
          contentPadding: EdgeInsets.only(
            left: Dimens.space16,
            top: Dimens.space10,
          ),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          border: InputBorder.none,
          errorBorder: InputBorder.none,
          prefixIcon: widget.prefixIcon,
          suffixIcon: widget.suffixIcon,
          alignLabelWithHint: true,
          hintText: widget.hint,
          floatingLabelBehavior: widget.hint != null
              ? FloatingLabelBehavior.always
              : null,
          hintStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: Theme.of(context).extension<FungsitamaColors>()!.subtitle,
          ),
        ),
        onChanged: (String value) =>
            _debouncer.run(() => widget.validatorListener?.call(value)),
      ),
    );
  }
}
