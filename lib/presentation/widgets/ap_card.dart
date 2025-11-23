import 'package:flutter/material.dart';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_image_carousel_slider/image_carousel_slider.dart';
import 'package:flutter_image_carousel_slider/image_carousel_slider_left_right_show.dart';

import 'package:roomate/presentation/presentation.dart';
import 'package:roomate/presentation/widgets/app_icon.dart';
import 'package:roomate/presentation/widgets/primary_btn.dart';

class ApCard extends StatelessWidget {
  const ApCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const P(horizontal: S.p16),
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(S.p12)),
          color: context.colors.white,
          boxShadow: [context.colors.shadow],
        ),
        child: Column(
          children: [
            //TODO: ну тут свою реализацию лучше написать + стили не из фигмы
            ClipRRect(
              borderRadius: const BorderRadiusGeometry.vertical(top: Radius.circular(S.p12)),
              child: ImageCarouselSlider(
                dotColor: context.colors.orange,
                items: const [
                  "https://www.omgtu.ru/upload/iblock/73e/rvhs0t416qqkgvh3h0p31cnxtktv6ro5/Banner_na_sayt_portal_abiturienta_67.png",
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
                        Text("${10000} ${context.l10n.r_month}", style: context.textStyle.headline1),
                        const AppIcon(AppIcons.favourite, width: S.p24),
                      ],
                    ),
                    Text("1 комн., 39м², этаж 3/17", style: context.textStyle.bodyDescription),
                    Text(
                      "Омск, улица Красный путь, 101к1",
                      style: context.textStyle.bodySmall.copyWith(color: context.colors.text400),
                    ),
                  ].separated(const SizedBox(height: S.p8)),
                  const SizedBox(height: S.p12),
                  Row(
                    children: [
                      Expanded(
                        child: PrimaryButton(titleText: Text(context.l10n.write), onPressed: () {}),
                      ),
                      Expanded(child: PrimaryButton(titleText: Text(context.l10n.call))),
                    ].separated(const SizedBox(width: S.p8)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
