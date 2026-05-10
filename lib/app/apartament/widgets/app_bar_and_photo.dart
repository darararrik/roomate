import 'package:flutter/material.dart';
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
    required this.onPageChanged,
    required this.onPreviousImagePressed,
    required this.onNextImagePressed,
    required this.onMorePressed,
  });

  final bool hasImages;
  final PageController pageController;
  final List<String> imageUrls;
  final int page;
  final AppPalette colors;
  final int imagesCount;
  final ValueChanged<int> onPageChanged;
  final VoidCallback onPreviousImagePressed;
  final VoidCallback onNextImagePressed;
  final VoidCallback onMorePressed;

  @override
  Widget build(BuildContext context) {
    Widget actionButton({
      required Widget child,
      VoidCallback? onTap,
      double size = S.p32,
    }) {
      return Opacity(
        opacity: onTap == null ? .45 : 1,
        child: SizedBox.square(
          dimension: size,
          child: Material(
            color: colors.opacityBlack60,
            borderRadius: .circular(size),
            child: InkWell(
              borderRadius: .circular(size),
              onTap: onTap,
              child: Center(child: child),
            ),
          ),
        ),
      );
    }

    return SliverMainAxisGroup(
      slivers: [
        AB(
          title: const SizedBox.shrink(),
          centerTitle: false,
          pinned: true,
          backgroundColor: colors.graysWhite,
          actionsPadding: const P(right: S.p8),
          actions: [
            IconButtonWidget(
              icon: AppIcons.more,
              radius: S.p32,
              size: S.p32,
              iconSize: S.p32,
              onPressed: onMorePressed,
            ),
          ],
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const P(top: S.p4, horizontal: S.p16),
            child: SizedBox(
              height: 280,
              child: ClipRRect(
                borderRadius: .circular(S.p12),
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    if (hasImages)
                      PageView.builder(
                        controller: pageController,
                        physics: const PageScrollPhysics(),
                        itemCount: imageUrls.length,
                        onPageChanged: onPageChanged,
                        itemBuilder: (context, index) => Image.network(
                          imageUrls[index],
                          fit: BoxFit.cover,
                          errorBuilder: (_, _, _) =>
                              ColoredBox(color: colors.graysLight100),
                        ),
                      )
                    else
                      ColoredBox(color: colors.graysLight100),
                    Positioned(
                      left: S.p12,
                      right: S.p12,
                      top: 0,
                      bottom: 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          actionButton(
                            onTap: page == 0 ? null : onPreviousImagePressed,
                            child: AppIcon(
                              AppIcons.arrowLeft,
                              width: S.p24,
                              height: S.p24,
                              color: colors.graysWhite,
                            ),
                          ),
                          actionButton(
                            size: S.p48,
                            child: Icon(
                              Icons.play_arrow_rounded,
                              color: colors.graysWhite,
                              size: S.p28,
                            ),
                          ),
                          actionButton(
                            onTap: page == imagesCount - 1
                                ? null
                                : onNextImagePressed,
                            child: AppIcon(
                              AppIcons.arrowRight,
                              width: S.p24,
                              height: S.p24,
                              color: colors.graysWhite,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      right: S.p12,
                      bottom: S.p12,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: colors.opacityBlack60,
                          borderRadius: const BorderRadius.all(
                            .circular(S.p24),
                          ),
                        ),
                        child: Padding(
                          padding: const P(horizontal: S.p10, vertical: S.p6),
                          child: Text(
                            "${page + 1} из $imagesCount",
                            style: context.typography.activesLabel.copyWith(
                              color: colors.graysWhite,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
