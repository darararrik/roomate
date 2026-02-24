import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:roomate/presentation/constants/constants.dart';
import 'package:roomate/presentation/utils/extensions.dart';
import 'package:roomate/presentation/utils/formatters/decimal_formatter.dart';
import 'package:roomate/presentation/utils/p.dart';

class TextFieldWithTitle extends StatelessWidget {
  /// Базовый конструктор (для обычного текста)
  const TextFieldWithTitle({
    super.key,
    required this.title,
    required this.hintText,
    required this.controller,
  }) : isSquare = false,
       keyboardType = TextInputType.text,
       inputFormatters = null;

  /// Именованный конструктор для чисел (целых)
  TextFieldWithTitle.number({
    super.key,
    required this.title,
    required this.hintText,
    required this.controller,
  }) : isSquare = false,
       keyboardType = TextInputType.number,
       inputFormatters = [FilteringTextInputFormatter.digitsOnly];

  /// Именованный конструктор для площади (десятичные + м2)
  TextFieldWithTitle.area({
    super.key,
    required this.title,
    required this.hintText,
    required this.controller,
  }) : isSquare = true,
       keyboardType = const TextInputType.numberWithOptions(decimal: true),
       inputFormatters = [DecimalFormatter()];

  /// Именованный конструктор для десятичных чисел без м2
  TextFieldWithTitle.decimal({
    super.key,
    required this.title,
    required this.hintText,
    required this.controller,
  }) : isSquare = false,
       keyboardType = const TextInputType.numberWithOptions(decimal: true),
       inputFormatters = [DecimalFormatter()];
  final String title;
  final String hintText;
  final TextEditingController controller;
  final bool isSquare;
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
          child: TextFormField(
            controller: controller,
            onTapOutside: (_) => FocusManager.instance.primaryFocus?.unfocus(),
            keyboardType: keyboardType,
            inputFormatters: inputFormatters,
            decoration: InputDecoration(
              hintText: hintText,
              suffixIcon: isSquare ? _buildSquareSuffix(context) : null,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSquareSuffix(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: S.p12),
      child: Align(
        widthFactor: 1,
        alignment: Alignment.centerRight,
        child: Text(
          context.l10n.squareMeters,
          style: context.typography.inputTextRegular.copyWith(
            color: context.colors.graysBlack,
          ),
        ),
      ),
    );
  }
}
