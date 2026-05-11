import 'package:flutter/material.dart';
import 'package:roomate/lib.dart';

class DetailAppBarAndPhoto extends StatelessWidget {
  const DetailAppBarAndPhoto({
    super.key,
    required this.pageController,
    required this.imageUrls,
    required this.page,
    required this.onPageChanged,
    required this.onPreviousImagePressed,
    required this.onNextImagePressed,
    this.title = const SizedBox.shrink(),
    this.actions = const [],
    this.centerAction,
  });

  final PageController pageController;
  final List<String> imageUrls;
  final int page;
  final ValueChanged<int> onPageChanged;
  final VoidCallback onPreviousImagePressed;
  final VoidCallback onNextImagePressed;
  final Widget title;
  final List<Widget> actions;
  final Widget? centerAction;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final hasImages = imageUrls.isNotEmpty;
    final imagesCount = hasImages ? imageUrls.length : 1;

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
          title: title,
          centerTitle: false,
          pinned: true,
          backgroundColor: colors.graysWhite,
          actionsPadding: const P(right: S.p8),
          actions: actions,
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const P(top: S.p4, horizontal: S.p16),
            child: SizedBox(
              height: 265,
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
                            child: Icon(
                              Icons.arrow_back_ios_rounded,
                              size: S.p24,
                              color: colors.graysWhite,
                            ),
                          ),
                          if (centerAction != null)
                            actionButton(size: S.p48, child: centerAction!)
                          else
                            const SizedBox(width: S.p48, height: S.p48),
                          actionButton(
                            onTap: page == imagesCount - 1
                                ? null
                                : onNextImagePressed,
                            child: Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: S.p24,
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
