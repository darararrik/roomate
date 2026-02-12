import 'package:flutter/material.dart';

import 'package:roomate/presentation/constants/constants.dart';
import 'package:roomate/presentation/utils/extensions.dart';
import 'package:roomate/presentation/utils/p.dart';

class TextFieldWithTitle extends StatelessWidget {
  const TextFieldWithTitle({
    super.key,
    required this.title,
    required this.hintText,
    required this.controller,
  });
  final String title;
  final String hintText;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        Padding(
          padding: const P(vertical: S.p4),
          child: Text(title, style: context.typography.headline1),
        ),
        Padding(
          padding: const P(vertical: S.p12),
          child: TextFormField(
            controller: controller,
            decoration: InputDecoration(hintText: hintText),
          ),
        ),
      ],
    );
  }
}
