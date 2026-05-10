import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:roomate/lib.dart';
import 'package:roomate/routing/app_routing.gr.dart';

class NeighboursSearchCard extends StatelessWidget {
  const NeighboursSearchCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.pushRoute(const WhoSearchRoute()),
      child: Padding(
        padding: const P(vertical: S.p12, horizontal: S.p24),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: context.colors.graysLight50,
            borderRadius: .circular(S.p24), 
          ),
          child: Padding(
            padding: const P(vertical: S.p20, horizontal: S.p8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const P(left: S.p12),
                  child: Padding(
                    padding: const P(all: S.p6),
                    child: AppIcon(AppIcons.search, color: context.colors.graysIcon500),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const P(right: S.p12, left: S.p12),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: S.p8,
                      children: [
                        Text("Кого ищете?", style: context.typography.bodyDescription),
                        Text(
                          "Уточните параметры для более точной совместимости",
                          softWrap: true,
                          style: context.typography.bodySmall.copyWith(
                            color: context.colors.graysText400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const P(right: S.p12),
                  child: AppIcon(
                    AppIcons.arrowRight,
                    width: S.p32,
                    height: S.p32,
                    color: context.colors.graysIcon500,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
