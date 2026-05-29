import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:roomate/lib.dart';

class OwnerCard extends StatelessWidget {
  const OwnerCard({super.key, required this.apartment});

  final ApartamentModel apartment;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: context.colors.graysLight50,
        border: Border.all(color: context.colors.graysStroke300),
        borderRadius: const BorderRadius.all(.circular(S.p12)),
      ),
      child: Padding(
        padding: const P(vertical: S.p20, horizontal: S.p12),
        child: Row(
          children: [
            const NetworkAvatar(imageUrl: '', size: S.p52),
            const SizedBox(width: S.p12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(apartment.name, style: context.typography.headline2, softWrap: true),
                  const SizedBox(height: S.p12),
                  Text(
                    apartment.role,
                    style: context.typography.bodyDescription.copyWith(color: context.colors.graysText700),
                    softWrap: true,
                  ),
                ],
              ),
            ),
            IconButtonWidget(
              icon: AppIcons.chats,
              onPressed: () {},
              iconColor: context.colors.lightOrange100,
              backgroundColor: context.colors.graysWhite,
              size: S.p48,
              iconSize: S.p24,
            ),
            const SizedBox(width: S.p12),
            IconButtonWidget(
              icon: AppIcons.phone,
              onPressed: () {},
              iconColor: context.colors.lightOrange100,
              backgroundColor: context.colors.graysWhite,
              size: S.p48,
              iconSize: S.p24,
            ),
          ],
        ),
      ),
    );
  }
}
