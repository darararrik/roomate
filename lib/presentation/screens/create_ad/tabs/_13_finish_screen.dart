import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:roomate/presentation/constants/spacing.dart';
import 'package:roomate/presentation/utils/utils.dart';

@RoutePage()
class FinishScreen extends StatelessWidget {
  const FinishScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const .symmetric(horizontal: S.p16),
      children: [
        const SizedBox(
          height: 251,
          width: double.infinity,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: .all(.circular(S.p12)),
            ),
          ),
        ),
        const SizedBox(height: S.p12),
        Padding(
          padding: const P(vertical: S.p12),
          child: Column(
            mainAxisSize: .max,
            mainAxisAlignment: .center,
            crossAxisAlignment: .center,
            children: [
              Text(
                "Объявление успешно создано!",
                textAlign: .center,
                style: context.typography.headline1,
              ),
              const SizedBox(height: S.p12),
              Text(
                "Изменить или дополнить объявление можно в профиле, в разделе «Мои объявления».",
                textAlign: .center,
                style: context.typography.bodyDescription.copyWith(
                  color: context.colors.graysText400,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
