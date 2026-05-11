import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:roomate/constants/app_icons.dart';
import 'package:roomate/constants/spacing.dart';
import 'package:roomate/utils/utils.dart';
import 'package:roomate/widgets/buttons/icon_button_widget.dart';

class InputWidget extends HookWidget {
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
    this.errorText = '',
    this.needSuffixIcon = true,
    this.maxLenght,
    this.minLines,
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
  final String errorText;
  final bool needSuffixIcon;
  final int? maxLenght;
  final int? minLines;
  @override
  Widget build(BuildContext context) {
    final internalFocusNode = useFocusNode();
    final node = focusNode ?? internalFocusNode;

    useListenable(node);
    useListenable(controller);

    final hasFocus = node.hasFocus;
    final hasError = errorText.isNotEmpty;

    final colors = context.colors;
    final borderColor = hasError
        ? colors.red
        : (hasFocus ? colors.orange : colors.graysStroke300);
    final textColor = hasError ? colors.red : colors.graysBlack;
    final textField = TextField(
      readOnly: readOnly,
      onTapOutside: (_) => FocusManager.instance.primaryFocus?.unfocus(),
      onTap: onTap,
      minLines: minLines,
      maxLines: maxLines,
      autofocus: autofocus,
      focusNode: node,
      controller: controller,
      enabled: enabled,
      keyboardType: keyboardType,
      onChanged: onChanged,
      textInputAction: textInputAction,
      inputFormatters: [...inputFormatters ?? []],
      maxLength: maxLenght,
      buildCounter:
          (_, {required currentLength, required isFocused, maxLength}) => null,
      style: (style ?? context.typography.inputRegular).copyWith(
        color: textColor,
      ),
      decoration: (decoration ?? const InputDecoration()).copyWith(
        prefixIcon: prefixIcon,

        hintText: hintText,
        hintStyle: hintStyle,
        suffixIcon: needSuffixIcon
            ? controller.text.isNotEmpty
                  ? IconButtonWidget(
                      icon: AppIcons.xSmall,
                      iconSize: S.p16,
                      size: S.p24,
                      iconColor: context.colors.graysIcon500,
                      onPressed: () {
                        controller.clear();
                        onChanged?.call('');
                      },
                    )
                  : null
            : null,
        // 4. Динамические границы
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: borderColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: borderColor, width: 1),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: colors.red),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: colors.red, width: 1),
        ),
      ),
    );
    if (!hasError) return textField;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        textField,
        Padding(
          padding: const EdgeInsets.only(top: 6, left: 4),
          child: Text(
            errorText,
            style: context.typography.inputRegular.copyWith(
              color: colors.red,
              fontSize: 12,
            ),
          ),
        ),
      ],
    );
  }
}
