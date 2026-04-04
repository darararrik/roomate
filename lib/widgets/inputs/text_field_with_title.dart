import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:roomate/constants/constants.dart';
import 'package:roomate/utils/extensions.dart';
import 'package:roomate/utils/formatters/decimal_formatter.dart';
import 'package:roomate/utils/helpers/p.dart';
import 'package:roomate/widgets/widgets.dart';

class TextFieldWithTitle extends StatelessWidget {
  /// Базовый конструктор (для обычного текста)
  const TextFieldWithTitle({
    super.key,
    required this.title,
    required this.hintText,
    required this.controller,
    this.onChanged,
    this.suffix,
    this.needSuffixIcon = true,
    this.maxLines,
    this.minLines,
    this.readOnly = false,
    this.errorText = '',
  }) : keyboardType = TextInputType.text,
       inputFormatters = null;

  /// Именованный конструктор для чисел (целых)
  TextFieldWithTitle.number({
    super.key,
    required this.title,
    required this.hintText,
    required this.controller,
    this.onChanged,
    this.needSuffixIcon = true,
    this.maxLines,
    this.minLines,
    this.readOnly = false,
    this.errorText = '',
  }) : suffix = null,
       keyboardType = TextInputType.number,
       inputFormatters = [FilteringTextInputFormatter.digitsOnly];

  /// Именованный конструктор для иконки (десятичные + м2)
  TextFieldWithTitle.withSuffix({
    super.key,
    required this.title,
    required this.hintText,
    required this.controller,
    required this.suffix,
    this.needSuffixIcon = true,
    this.onChanged,
    this.maxLines,
    this.minLines,
    this.readOnly = false,
    this.errorText = '',
  }) : keyboardType = const TextInputType.numberWithOptions(decimal: true),
       inputFormatters = [DecimalFormatter()];

  /// Именованный конструктор для десятичных чисел без м2
  TextFieldWithTitle.decimal({
    super.key,
    required this.title,
    required this.hintText,
    required this.controller,
    this.onChanged,
    this.needSuffixIcon = true,
    this.maxLines,
    this.readOnly = false,
    this.minLines,
    this.errorText = '',
  }) : suffix = null,
       keyboardType = const TextInputType.numberWithOptions(decimal: true),
       inputFormatters = [DecimalFormatter()];

  const TextFieldWithTitle.multiline({
    super.key,
    required this.title,
    required this.hintText,
    required this.controller,
    this.readOnly = false,
    this.onChanged,
    this.errorText = '',
  }) : suffix = null,
       keyboardType = TextInputType.multiline,
       maxLines = 10,
       minLines = 5,
       needSuffixIcon = false,
       inputFormatters = null;

  final String title;
  final String hintText;
  final TextEditingController controller;
  final String? suffix;
  final TextInputType keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final void Function(String)? onChanged;
  final bool needSuffixIcon;
  final int? maxLines;
  final int? minLines;
  final bool readOnly;
  final String errorText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const P(vertical: S.p4),
          child: Text(title, style: context.typography.headline1),
        ),
        Padding(
          padding: const P(vertical: S.p12),
          child: InputWidget(
            controller: controller,
            keyboardType: keyboardType,
            maxLines: maxLines,
            minLines: minLines,
            inputFormatters: inputFormatters,
            onChanged: onChanged,
            needSuffixIcon: needSuffixIcon,
            readOnly: readOnly,
            decoration: InputDecoration(
              hintText: hintText,
              suffixIcon: suffix != null ? _buildIconSuffix(context, suffix!) : null,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildIconSuffix(BuildContext context, String suffixPath) {
    return Padding(
      padding: const EdgeInsets.only(right: S.p12),
      child: Align(
        widthFactor: 1,
        alignment: Alignment.centerRight,
        child: Text(
          suffixPath,
          style: context.typography.inputRegular.copyWith(color: context.colors.graysBlack),
        ),
      ),
    );
  }
}
