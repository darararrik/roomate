import 'package:flutter/material.dart';

import 'package:flutter_image_carousel_slider/image_carousel_slider.dart';

import 'package:roomate/presentation/presentation.dart';
import 'package:roomate/presentation/utils/extensions/list_x.dart';
import 'package:roomate/presentation/widgets/app_icon.dart';

class ApartmentCard extends StatelessWidget {
  const ApartmentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const P(horizontal: S.p16),
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(S.p12)),
          color: context.colors.graysWhite,
          boxShadow: [context.colors.shadow],
        ),
        child: Column(
          children: [
            //TODO: ну тут свою реализацию лучше написать + стили не из фигмы
            ClipRRect(
              borderRadius: const BorderRadiusGeometry.vertical(
                top: Radius.circular(S.p12),
              ),
              child: ImageCarouselSlider(
                dotColor: context.colors.orange,
                items: const [
                  "https://60.img.avito.st/image/1/1.0spXDba5fiNhuvwufzLFzwGsfCXprPw1YaF8IeW4eiE.LkM4M1pgzThWpbCB7fAiDuXKsdw5CutMHSi16j7fLy0",
                  "https://www.omgtu.ru/upload/iblock/73e/rvhs0t416qqkgvh3h0p31cnxtktv6ro5/Banner_na_sayt_portal_abiturienta_67.png",
                  "https://www.omgtu.ru/upload/iblock/73e/rvhs0t416qqkgvh3h0p31cnxtktv6ro5/Banner_na_sayt_portal_abiturienta_67.png",
                ],
                imageHeight: S.p163,
              ),
            ),
            Padding(
              padding: const P(all: S.p16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  ...[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "${10000} ${context.l10n.currencyPerMonth}",
                          style: context.typography.headline1,
                        ),
                        const AppIcon(AppIcons.favourite, size: S.p24),
                      ],
                    ),
                    Text(
                      "1 комн., 39м², этаж 3/17",
                      style: context.typography.bodyDescription,
                    ),
                    Text(
                      "Омск, улица Красный путь, 101к1",
                      style: context.typography.bodySmall.copyWith(
                        color: context.colors.graysText400,
                      ),
                    ),
                  ].separated(const SizedBox(height: S.p8)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
