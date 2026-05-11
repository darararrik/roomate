import 'package:flutter/material.dart';

import 'package:roomate/lib.dart';

class DetailPriceAndFavoriteIcon extends StatelessWidget {
  const DetailPriceAndFavoriteIcon({
    super.key,
    required this.title,
    required this.onFavoritePressed,
    required this.isFavorite,
  });

  final String title;
  final VoidCallback onFavoritePressed;
  final bool isFavorite;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            title,
            style: context.typography.headline0,
            softWrap: true,
          ),
        ),
        IconButtonWidget(
          icon: AppIcons.favourite,
          onPressed: onFavoritePressed,
          iconColor: isFavorite
              ? context.colors.orange
              : context.colors.graysBlack,
          size: S.p36,
          iconSize: S.p24,
        ),
      ],
    );
  }
}
