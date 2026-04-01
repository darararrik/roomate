import 'package:flutter/material.dart';

import 'package:roomate/domain/models/apartaments/apartament_model.dart';
import 'package:roomate/presentation/constants/constants.dart';
import 'package:roomate/presentation/utils/utils.dart';
import 'package:roomate/presentation/widgets/widgets.dart';

class OwnerCard extends StatelessWidget {
  const OwnerCard({super.key, required this.apartment});

  final ApartamentModel apartment;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: context.colors.graysLight50,
        borderRadius: const BorderRadius.all(.circular(S.p12)),
      ),
      child: Padding(
        padding: const P(vertical: S.p20, horizontal: S.p12),
        child: Row(
          children: [
            //TODO: потом реализовать аватрку у пользователя
            const AppIcon(AppIcons.defaultAvatar, width: S.p52, height: S.p52),
            const SizedBox(width: S.p12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(apartment.name, style: context.typography.headline2),
                  const SizedBox(height: S.p12),
                  Text(
                    apartment.role,
                    style: context.typography.bodyDescription.copyWith(
                      color: context.colors.graysText700,
                    ),
                  ),
                ],
              ),
            ),
            IconButtonWidget(
              icon: AppIcons.chats,
              onPressed: () {},
              iconColor: context.colors.lightOrange100,
              backgroundColor: context.colors.graysWhite,
            ),
            const SizedBox(width: S.p12),
            IconButtonWidget(
              icon: AppIcons.phone,
              onPressed: () {},
              iconColor: context.colors.lightOrange100,
              backgroundColor: context.colors.graysWhite,
            ),
          ],
        ),
      ),
    );
  }
}
