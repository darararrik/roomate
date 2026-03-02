import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:roomate/presentation/constants/constants.dart';
import 'package:roomate/presentation/utils/extensions/extensions.dart';
import 'package:roomate/presentation/utils/formatters/decimal_formatter.dart';
import 'package:roomate/presentation/utils/p.dart';
import 'package:roomate/presentation/widgets/widgets.dart';

class TextFieldWithTitle extends StatelessWidget {
  /// Базовый конструктор (для обычного текста)
  const TextFieldWithTitle({
    super.key,
    required this.title,
    required this.hintText,
    required this.controller,
    this.suffix,
    this.isMultiline = false,
  }) : keyboardType = TextInputType.text,
       inputFormatters = null;

  /// Именованный конструктор для чисел (целых)
  TextFieldWithTitle.number({
    super.key,
    required this.title,
    required this.hintText,
    required this.controller,
  }) : isMultiline = false,
       suffix = null,
       keyboardType = TextInputType.number,
       inputFormatters = [FilteringTextInputFormatter.digitsOnly];

  /// Именованный конструктор для иконки (десятичные + м2)
  TextFieldWithTitle.withSuffix({
    super.key,
    required this.title,
    required this.hintText,
    required this.controller,
    required this.suffix,
  }) : isMultiline = false,
       keyboardType = const TextInputType.numberWithOptions(decimal: true),
       inputFormatters = [DecimalFormatter()];

  /// Именованный конструктор для десятичных чисел без м2
  TextFieldWithTitle.decimal({
    super.key,
    required this.title,
    required this.hintText,
    required this.controller,
  }) : isMultiline = false,
       suffix = null,
       keyboardType = const TextInputType.numberWithOptions(decimal: true),
       inputFormatters = [DecimalFormatter()];

  const TextFieldWithTitle.multiline({
    super.key,
    required this.title,
    required this.hintText,
    required this.controller,
  }) : suffix = null,
       keyboardType = TextInputType.multiline,
       inputFormatters = null,
       isMultiline = true;
  final bool isMultiline;
  final String title;
  final String hintText;
  final TextEditingController controller;
  final String? suffix;
  final TextInputType keyboardType;
  final List<TextInputFormatter>? inputFormatters;

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
            //TODO: Реализовать минимум 50 симоволов для multiline
            validator: (value) {
              if (isMultiline && (value?.length ?? 0) < 50) {
                return "Минимум 50 символов";
              }
              return null;
            },
            keyboardType: keyboardType,
            maxLines: isMultiline ? 8 : 1,
            inputFormatters: inputFormatters,
            decoration: InputDecoration(
              hintText: hintText,
              suffixIcon: suffix != null
                  ? _buildIconSuffix(context, suffix!)
                  : null,
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
          style: context.typography.inputTextRegular.copyWith(
            color: context.colors.graysBlack,
          ),
        ),
      ),
    );
  }
}
