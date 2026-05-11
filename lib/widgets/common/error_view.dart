import 'package:flutter/material.dart';

import 'package:roomate/utils/extensions.dart';

class ErrorView extends StatelessWidget {
  const ErrorView({super.key, this.error});
  final Object? error;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(context.l10n.errorGeneric),
          if (error != null) Text(error.toString()),
        ],
      ),
    );
  }
}
