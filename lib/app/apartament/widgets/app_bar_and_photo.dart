import 'package:flutter/material.dart';
import 'package:roomate/app/apartament/widgets/more_action_bottom_sheet.dart';
import 'package:roomate/lib.dart';

class AppBarAndPhoto extends StatelessWidget {
  const AppBarAndPhoto({
    super.key,
    required this.hasImages,
    required this.pageController,
    required this.imageUrls,
    required this.page,
    required this.colors,
    required this.imagesCount,
  });

  final bool hasImages;
  final PageController pageController;
  final List<String> imageUrls;
  final ValueNotifier<int> page;
  final AppPalette colors;
  final int imagesCount;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      expandedHeight: 280,
      actions: [
        Padding(
          padding: const P(right: S.p8),
          child: IconButtonWidget(
            icon: AppIcons.more,
            radius: 100,
            onPressed: () => showModalBottomSheet(
              context: context,
              builder: (context) {
                return const MoreActionBottomSheet();
              },
            ),
            iconSize: S.p32,
          ),
        ),
      ],
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          fit: StackFit.expand,
          children: [
            if (hasImages)
              PageView.builder(
                controller: pageController,
                physics: const PageScrollPhysics(),
                itemCount: imageUrls.length,
                onPageChanged: (index) => page.value = index,
                itemBuilder: (context, index) => Image.network(
                  imageUrls[index],
                  fit: BoxFit.cover,
                  errorBuilder: (_, _, _) => ColoredBox(color: colors.graysLight100),
                ),
              )
            else
              ColoredBox(color: colors.graysLight100),
            IgnorePointer(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      colors.opacityBlack60.withValues(alpha: .12),
                      Colors.transparent,
                      colors.opacityBlack60.withValues(alpha: .35),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              right: S.p16,
              bottom: S.p20,
              child: IgnorePointer(
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: colors.opacityBlack60,
                    borderRadius: const BorderRadius.all(.circular(S.p24)),
                  ),
                  child: Padding(
                    padding: const P(horizontal: S.p10, vertical: S.p6),
                    child: Text(
                      "${page.value + 1}/$imagesCount",
                      style: context.typography.activesLabel.copyWith(color: colors.graysWhite),
                    ),
                  ),
                ),
              ),
            ),
            if (hasImages && imageUrls.length > 1)
              Positioned(
                left: S.p16,
                right: S.p16,
                bottom: S.p20,
                child: IgnorePointer(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(imageUrls.length, (index) {
                      final isActive = index == page.value;
                      return AnimatedContainer(
                        duration: const Duration(milliseconds: 180),
                        margin: const EdgeInsets.symmetric(horizontal: S.p4),
                        width: isActive ? S.p16 : S.p6,
                        height: S.p6,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(.circular(S.p12)),
                          color: isActive
                              ? colors.graysWhite
                              : colors.graysWhite.withValues(alpha: .5),
                        ),
                      );
                    }),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
