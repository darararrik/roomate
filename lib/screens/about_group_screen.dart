import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:roomate/screens/about_group_notifier.dart';
import 'package:roomate/lib.dart';

@RoutePage()
class AboutGroupScreen extends ConsumerWidget {
  const AboutGroupScreen({super.key});

  static const _amenities = [
    _AmenityData(iconPath: AppIcons.wifi, title: 'Интернет'),
    _AmenityData(iconPath: AppIcons.trash, title: 'Мусоропровод'),
    _AmenityData(iconPath: AppIcons.dishes, title: 'Посуда'),
    _AmenityData(iconPath: AppIcons.videoIntercom, title: 'Видеодомофон'),
    _AmenityData(iconPath: AppIcons.concierge, title: 'Консьерж'),
    _AmenityData(iconPath: AppIcons.smartHome, title: 'Умный дом'),
    _AmenityData(iconPath: AppIcons.bathroom, title: 'Душевая кабина'),
    _AmenityData(iconPath: AppIcons.bathroom, title: 'Ванна'),
    _AmenityData(iconPath: AppIcons.fridge, title: 'Холодильник'),
    _AmenityData(iconPath: AppIcons.tv, title: 'Телевизор'),
    _AmenityData(iconPath: AppIcons.washingMachine, title: 'Стиральная машина'),
    _AmenityData(iconPath: AppIcons.airConditioner, title: 'Кондиционер'),
    _AmenityData(iconPath: AppIcons.dishwasher, title: 'Посудомоечная машина'),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colors = context.colors;
    final state = ref.watch(aboutGroupProvider);
    final notifier = ref.read(aboutGroupProvider.notifier);

    return Scaffold(
      backgroundColor: colors.graysWhite,
      bottomNavigationBar: SafeArea(
        top: false,
        child: Padding(
          padding: const P(horizontal: S.p16, vertical: S.p12),
          child: PrimaryButton(
            text: 'Подать заявку',
            onPressed: notifier.onApplyPressed,
          ),
        ),
      ),
      body: SafeArea(
        bottom: false,
        child: CustomScrollView(
          slivers: [
            AB(
              title: Text(context.l10n.aboutTheGroup),
              centerTitle: false,
              backgroundColor: colors.graysWhite,
            ),
            SliverPadding(
              padding: const P(top: S.p4, horizontal: S.p16),
              sliver: SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _GroupGallery(
                      pageController: notifier.pageController,
                      page: state.page,
                      imageUrls: state.imageUrls,
                      onPageChanged: notifier.onPageChanged,
                      onPreviousImagePressed: notifier.onPreviousImagePressed,
                      onNextImagePressed: notifier.onNextImagePressed,
                    ),
                    const SizedBox(height: S.p16),
                    const ChipMatch(),
                    const SizedBox(height: S.p12),
                    Text(
                      'Тихий уголок в центре',
                      style: context.typography.headline1,
                      softWrap: true,
                    ),
                    const SizedBox(height: S.p12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            '10 000 ₽/мес.',
                            style: context.typography.headline0,
                            softWrap: true,
                          ),
                        ),
                        IconButtonWidget(
                          icon: AppIcons.favourite,
                          size: S.p36,
                          iconSize: S.p24,
                          onPressed: notifier.onFavoritePressed,
                          iconColor: state.isFavorite
                              ? colors.orange
                              : colors.graysBlack,
                        ),
                      ],
                    ),
                    const SizedBox(height: S.p12),
                    const Row(
                      children: [
                        Expanded(
                          child: _MetricInfo(
                            value: '1-комн.',
                            label: 'квартира',
                          ),
                        ),
                        Expanded(
                          child: _MetricInfo(value: '39м²', label: 'площадь'),
                        ),
                        Expanded(
                          child: _MetricInfo(value: '3 из 17', label: 'этаж'),
                        ),
                      ],
                    ),
                    const SizedBox(height: S.p24),
                    Section(
                      title: context.l10n.adDescription,
                      child: Padding(
                        padding: const P(vertical: S.p8),
                        child: Text(
                          'Ищем соседей для уютной квартиры в центре города. '
                          'Главное для нас — спокойствие, уважение личного пространства и чистота. '
                          'Гостей приводим редко, любим работать и отдыхать в тишине. '
                          'Если тебе тоже важен комфортный и размеренный быт — добро пожаловать!',
                          style: context.typography.bodyDescription,
                        ),
                      ),
                    ),
                    Section(
                      title: 'Участники и условия',
                      child: Padding(
                        padding: const P(vertical: S.p8),
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: colors.graysLight50,
                            borderRadius: .circular(S.p12),
                            border: Border.all(color: colors.graysStroke300),
                          ),
                          child: Padding(
                            padding: const P(
                              vertical: S.p20,
                              horizontal: S.p16,
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const OverlappingAvatars(
                                        avatarSize: S.p36,
                                        overlap: S.p10,
                                      ),
                                      const SizedBox(height: S.p12),
                                      Text(
                                        '4/5 ${context.l10n.participants}',
                                        style: context
                                            .typography
                                            .bodyDescription
                                            .copyWith(
                                              color: colors.graysText400,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                                AppIcon(
                                  AppIcons.arrowRight,
                                  width: S.p32,
                                  height: S.p32,
                                  color: colors.graysIcon500,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const P(vertical: S.p8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Размещено: ${state.publishedAt}',
                            style: context.typography.bodyDescription.copyWith(
                              color: colors.graysText400,
                            ),
                          ),
                          const SizedBox(height: S.p8),
                          Text(
                            context.l10n.viewsCount(278),
                            style: context.typography.bodyDescription.copyWith(
                              color: colors.graysText400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Divider(),
                    const SizedBox(height: S.p24),
                    Section(
                      title: context.l10n.location,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Омск, улица Красный путь, 101к1',
                            style: context.typography.bodyDescription.copyWith(
                              color: colors.graysText700,
                            ),
                            softWrap: true,
                          ),
                          const SizedBox(height: S.p12),
                          const _MapPreview(),
                        ],
                      ),
                    ),
                    Section(
                      title: context.l10n.aboutHouse,
                      child: const Padding(
                        padding: P(vertical: S.p8),
                        child: Column(
                          spacing: S.p12,
                          children: [
                            InfoRow(title: 'Планировка', value: 'Смежная'),
                            InfoRow(title: 'Ремонт', value: 'Без ремонта'),
                            InfoRow(title: 'Лифт', value: 'Пассажирский'),
                            InfoRow(title: 'Балконы', value: 'Балкон'),
                            InfoRow(title: 'Плита', value: 'Газ'),
                          ],
                        ),
                      ),
                    ),
                    LayoutBuilder(
                      builder: (context, constraints) {
                        final itemWidth = (constraints.maxWidth - S.p12) / 2;
                        return Section(
                          title: context.l10n.amenities,
                          child: Padding(
                            padding: const P(vertical: S.p8),
                            child: Wrap(
                              spacing: S.p12,
                              runSpacing: S.p12,
                              children: _amenities.map((item) {
                                return SizedBox(
                                  width: itemWidth,
                                  child: _AmenityTile(item: item),
                                );
                              }).toList(),
                            ),
                          ),
                        );
                      },
                    ),
                    const Section(
                      title: 'Условия сделки',
                      child: Padding(
                        padding: P(vertical: S.p8),
                        child: Column(
                          spacing: S.p12,
                          children: [
                            InfoRow(
                              title: 'Срок аренды',
                              value: 'Долгосрочная',
                            ),
                            InfoRow(
                              title: 'Коммунальные услуги',
                              value: 'Включены в стоимость',
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: S.p24),
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

class _GroupGallery extends StatelessWidget {
  const _GroupGallery({
    required this.pageController,
    required this.page,
    required this.imageUrls,
    required this.onPageChanged,
    required this.onPreviousImagePressed,
    required this.onNextImagePressed,
  });

  final PageController pageController;
  final int page;
  final List<String> imageUrls;
  final ValueChanged<int> onPageChanged;
  final VoidCallback onPreviousImagePressed;
  final VoidCallback onNextImagePressed;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    return SizedBox(
      height: 280,
      child: ClipRRect(
        borderRadius: .circular(S.p12),
        child: Stack(
          fit: StackFit.expand,
          children: [
            PageView.builder(
              controller: pageController,
              itemCount: imageUrls.length,
              onPageChanged: onPageChanged,
              itemBuilder: (context, index) {
                return Image.network(
                  imageUrls[index],
                  fit: BoxFit.cover,
                  errorBuilder: (_, _, _) =>
                      ColoredBox(color: colors.graysLight100),
                );
              },
            ),
            Positioned.fill(
              child: IgnorePointer(
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        Colors.transparent,
                        colors.opacityBlack60.withValues(alpha: .15),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: S.p12,
              right: S.p12,
              top: 0,
              bottom: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _GalleryArrow(
                    iconPath: AppIcons.arrowLeft,
                    onTap: page == 0 ? null : onPreviousImagePressed,
                  ),
                  _GalleryArrow(
                    iconPath: AppIcons.arrowRight,
                    onTap: page == imageUrls.length - 1
                        ? null
                        : onNextImagePressed,
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
                  borderRadius: .circular(S.p24),
                ),
                child: Padding(
                  padding: const P(horizontal: S.p10, vertical: S.p6),
                  child: Text(
                    '${page + 1} из ${imageUrls.length}',
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
    );
  }
}

class _GalleryArrow extends StatelessWidget {
  const _GalleryArrow({required this.iconPath, this.onTap});

  final String iconPath;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    return Opacity(
      opacity: onTap == null ? .45 : 1,
      child: IconButtonWidget(
        icon: iconPath,
        size: S.p32,
        iconSize: S.p24,
        radius: S.p32,
        backgroundColor: colors.opacityBlack60,
        iconColor: colors.graysWhite,
        onPressed: onTap,
      ),
    );
  }
}

class _MetricInfo extends StatelessWidget {
  const _MetricInfo({required this.value, required this.label});

  final String value;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(value, style: context.typography.bodyDescription),
        const SizedBox(height: S.p4),
        Text(
          label,
          style: context.typography.bodyDescription.copyWith(
            color: context.colors.graysText400,
          ),
        ),
      ],
    );
  }
}

class _AmenityTile extends StatelessWidget {
  const _AmenityTile({required this.item});

  final _AmenityData item;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppIcon(
          item.iconPath,
          width: S.p20,
          height: S.p20,
          color: context.colors.graysIcon500,
        ),
        const SizedBox(width: S.p8),
        Expanded(
          child: Text(item.title, style: context.typography.bodyDescription),
        ),
      ],
    );
  }
}

class _MapPreview extends StatelessWidget {
  const _MapPreview();

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    return ClipRRect(
      borderRadius: .circular(S.p12),
      child: SizedBox(
        height: 120,
        child: Stack(
          fit: StackFit.expand,
          children: [
            CustomPaint(painter: _MapPreviewPainter()),
            const Positioned(
              left: 0,
              top: 0,
              bottom: 0,
              width: 72,
              child: ColoredBox(color: Color(0xFFD9F0C2)),
            ),
            Center(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: colors.orange,
                  shape: BoxShape.circle,
                ),
                child: Padding(
                  padding: const P(all: S.p12),
                  child: AppIcon(
                    AppIcons.building2,
                    width: S.p24,
                    height: S.p24,
                    color: colors.graysWhite,
                  ),
                ),
              ),
            ),
            Positioned(
              right: S.p16,
              top: S.p24,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: colors.graysWhite,
                  borderRadius: .circular(S.p10),
                  boxShadow: [colors.shadow],
                ),
                child: const Padding(
                  padding: P(horizontal: S.p10, vertical: S.p8),
                  child: Text(
                    'улица Красный Путь, 101...',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _MapPreviewPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final background = Paint()..color = const Color(0xFFF4F5F8);
    final road = Paint()
      ..color = const Color(0xFFD7DCE5)
      ..strokeWidth = 3
      ..strokeCap = StrokeCap.round;
    final thinRoad = Paint()
      ..color = const Color(0xFFE4E8EF)
      ..strokeWidth = 1.5
      ..strokeCap = StrokeCap.round;

    canvas.drawRect(Offset.zero & size, background);

    canvas.drawLine(
      Offset(size.width * .05, size.height * .2),
      Offset(size.width * .45, size.height * .95),
      road,
    );
    canvas.drawLine(
      Offset(size.width * .35, 0),
      Offset(size.width * .95, size.height * .75),
      road,
    );
    canvas.drawLine(
      Offset(size.width * .2, size.height * .65),
      Offset(size.width, size.height * .3),
      road,
    );

    for (var i = 0; i < 8; i++) {
      final dy = 12.0 + i * 16;
      canvas.drawLine(
        Offset(size.width * .18, dy),
        Offset(size.width, dy + 8),
        thinRoad,
      );
    }

    for (var i = 0; i < 5; i++) {
      final dx = size.width * .24 + i * 52;
      canvas.drawLine(Offset(dx, 0), Offset(dx - 18, size.height), thinRoad);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class _AmenityData {
  const _AmenityData({required this.iconPath, required this.title});

  final String iconPath;
  final String title;
}
