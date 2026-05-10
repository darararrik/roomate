import 'package:flutter/material.dart';
import 'package:domain/domain.dart';

import 'package:roomate/lib.dart';

class PriceAndFavoriteIcon extends StatelessWidget {
  const PriceAndFavoriteIcon({
    super.key,
    required this.apartment,
    required this.favoriteNotifier,
    required this.isFavorite,
    required this.colors,
  });

  final ApartamentModel apartment;
  final VoidCallback favoriteNotifier;
  final bool isFavorite;
  final AppPalette colors;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            "${apartment.price} ${context.l10n.currencyPerMonth}",
            style: context.typography.headline0,
            softWrap: true,
          ),
        ),
        IconButtonWidget(
          icon: AppIcons.favourite,
          onPressed: favoriteNotifier,
          iconColor: isFavorite ? colors.orange : colors.graysBlack,
          size: S.p36,
          iconSize: S.p24,
        ),
      ],
    );
  }
}
