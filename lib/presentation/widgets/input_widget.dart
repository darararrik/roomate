import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:roomate/presentation/constants/constants.dart';
import 'package:roomate/presentation/utils/utils.dart';
import 'package:roomate/presentation/widgets/app_icon.dart';

class InputWidget extends StatelessWidget {
  const InputWidget({
    super.key,
    required this.controller,
    this.hintText,
    this.onChanged,
    this.enabled = true,
    this.keyboardType = TextInputType.text,
    this.textInputAction = TextInputAction.done,
    this.border,
    this.enabledBorder,
    this.focusedBorder,
    this.fillColor,
    this.contentPadding,
    this.validator,
    this.onTap,
    this.readOnly = false,
    this.focusNode,
    this.style,
    this.isSearch = false,
    this.prefixIcon,
  });
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
  final InputBorder? border;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final Color? fillColor;
  final EdgeInsets? contentPadding;
  final FocusNode? focusNode;
  final TextStyle? style;
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<TextEditingValue>(
      valueListenable: controller,
      builder: (context, value, _) {
        return DecoratedBox(
          decoration: BoxDecoration(color: context.colors.input200, borderRadius: BorderRadius.circular(S.p16)),
          child: SizedBox(
            height: S.p54,
            child: Center(
              child: TextFormField(
                textAlignVertical: TextAlignVertical.center,
                focusNode: focusNode,
                readOnly: readOnly,
                onTap: onTap,
                controller: controller,
                enabled: enabled,
                keyboardType: keyboardType,
                textInputAction: textInputAction,
                onChanged: onChanged,
                style: style ?? context.textStyle.inputTextRegular,
                validator: validator,
                decoration: InputDecoration(
                  hintText: hintText,
                  isDense: true,
                  contentPadding: contentPadding,
                  border: border,
                  enabledBorder: enabledBorder,
                  focusedBorder: focusedBorder,
                  prefixIcon: prefixIcon,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
