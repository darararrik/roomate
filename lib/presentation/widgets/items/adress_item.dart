import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import 'package:roomate/presentation/constants/constants.dart';
import 'package:roomate/presentation/utils/utils.dart';
import 'package:roomate/presentation/widgets/widgets.dart';

class AdressItem extends StatelessWidget {
  const AdressItem({super.key, required this.onSelected});

  final void Function(String address) onSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onSelected("метро Ухтомская");
        context.pop();
      },
      child: Padding(
        padding: const P(horizontal: S.p12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: P(all: S.p10),
              child: AppIcon(AppIcons.street),
            ),
            const SizedBox(width: S.p12),
            Expanded(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: context.colors.graysStroke300),
                  ),
                ),
                child: Padding(
                  padding: const P(bottom: S.p12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "метро Ухтомская",
                        style: context.typography.bodyDescription,
                      ),
                      const SizedBox(height: S.p8),
                      Text(
                        "Люберцы, Люберцы (городской округ), Московская область, Москва и МО",
                        style: context.typography.bodySmall.copyWith(
                          color: context.colors.graysText400,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
