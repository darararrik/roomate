import 'package:flutter/material.dart';

import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';

import 'package:roomate/presentation/presentation.dart';
import 'package:roomate/presentation/widgets/widgets.dart';

@RoutePage()
class AboutGroupScreen extends StatelessWidget {
  const AboutGroupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            AB(title: Text(context.l10n.aboutTheGroup), centerTitle: false),
            SliverPadding(
              padding: const P(top: S.p4, horizontal: S.p16),
              sliver: SliverFillRemaining(
                child: Column(
                  children: [
                    const OverlappingAvatars(avatarSize: S.p46),
                    const SizedBox(height: S.p10),
                    Text(
                      "4/5 ${context.l10n.participants}",
                      style: context.typography.bodyTitle.copyWith(color: context.colors.text400),
                    ),
                    Padding(
                      padding: const P(horizontal: S.p4),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const ChipMatch(),
                          Text("Тихий уголок в центре", style: context.typography.headline1),
                          Text(
                            "Омск, улица Ленина, 12к1",
                            style: context.typography.bodySmall.copyWith(color: context.colors.text400),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const CircleAvatar(),
                              const SizedBox(width: S.p12),
                              Expanded(child: Text("Татьяна Иванова", style: context.typography.bodyDescription)),
                            ],
                          ),
                          Text(
                            "Ищем соседей для уютной квартиры в центре города. Главное для нас — спокойствие, уважение личного пространства и чистота. Гостей приводим редко, любим работать и отдыхать в тишине. Если тебе тоже важен комфортный и размеренный быт — добро пожаловать!",
                            style: context.typography.bodyDescription,
                          ),
                        ].separated(const SizedBox(height: S.p16)),
                      ),
                    ),
                    const Spacer(),
                    PrimaryButton(titleText: Text(context.l10n.join), onPressed: () {}),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
