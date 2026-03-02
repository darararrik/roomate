import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:roomate/presentation/utils/utils.dart';

class InputWidget extends StatelessWidget {
  const InputWidget({
    super.key,
    required this.controller,
    this.hintText,
    this.onChanged,
    this.enabled = true,
    this.keyboardType = TextInputType.text,
    this.textInputAction = TextInputAction.done,
    this.validator,
    this.onTap,
    this.readOnly = false,
    this.focusNode,
    this.style,
    this.isSearch = false,
    this.prefixIcon,
    this.inputFormatters,
    this.autofocus = false,
    this.hintStyle,
    this.decoration,
    this.maxLines,
  });
  final bool autofocus;
  final bool isSearch;
  final Widget? prefixIcon;
  final bool readOnly;
  final VoidCallback? onTap;
  final FormFieldValidator<String>? validator;
  final TextEditingController controller;
  final String? hintText;
  final ValueChanged<String>? onChanged;
  final bool enabled;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final FocusNode? focusNode;
  final TextStyle? style;
  final List<TextInputFormatter>? inputFormatters;
  final TextStyle? hintStyle;
  final InputDecoration? decoration;
  final int? maxLines;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTapOutside: (_) => FocusManager.instance.primaryFocus?.unfocus(),
      autofocus: autofocus,
      textAlignVertical: TextAlignVertical.center,
      focusNode: focusNode,
      readOnly: readOnly,
      onTap: onTap,
      controller: controller,
      enabled: enabled,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      onChanged: onChanged,
      style: style ?? context.typography.inputTextRegular,
      validator: validator,
      inputFormatters: inputFormatters,
      maxLines: maxLines,
      decoration: (decoration ?? const InputDecoration()).copyWith(
        hintText: hintText,
        hintStyle: hintStyle,
        prefixIcon: prefixIcon,
      ),
    );
  }
}
