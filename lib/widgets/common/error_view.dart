import 'package:flutter/material.dart';

import 'package:roomate/utils/extensions.dart';

class ErrorView extends StatelessWidget {
  const ErrorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(context.l10n.errorGeneric));
  }
}
