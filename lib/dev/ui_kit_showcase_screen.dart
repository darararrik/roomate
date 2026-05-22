import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:roomate/app/create/create_group/widgets/group_switch_row.dart';
import 'package:roomate/lib.dart';

class UiKitShowcaseScreen extends StatefulWidget {
  const UiKitShowcaseScreen({super.key});

  @override
  State<UiKitShowcaseScreen> createState() => _UiKitShowcaseScreenState();
}

class _UiKitShowcaseScreenState extends State<UiKitShowcaseScreen> {
  late final TextEditingController _searchController;
  late final TextEditingController _nameController;
  late final TextEditingController _descriptionController;

  bool _childrenAllowed = false;
  bool _petsAllowed = true;

  static const _apartment = ApartamentPreviewModel(
    id: 'demo-apartment',
    imageUrls: [
      'https://images.unsplash.com/photo-1502672260266-1c1ef2d93688?auto=format&fit=crop&w=1200&q=80',
      'https://images.unsplash.com/photo-1494526585095-c41746248156?auto=format&fit=crop&w=1200&q=80',
    ],
    price: '45 000',
    roomsCount: '2',
    area: '54,5',
    floor: 7,
    totalFloor: 16,
    address: 'Омск, улица Ленина, 10',
  );

  static const _group = GroupListItemModel(
    id: 'demo-group',
    title: 'Тихая квартира в центре',
    description: 'Ищем соседа для спокойной квартиры и размеренного быта.',
    matchPercent: 93,
    participantsCount: 2,
    maxParticipantsCount: 4,
    participantAvatars: [
      'https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&w=160&q=80',
      'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?auto=format&fit=crop&w=160&q=80',
    ],
    price: '20 000 ₽/мес.',
    apartament: _apartment,
  );

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController(text: 'Омск, центр');
    _nameController = TextEditingController(text: 'Название объявления');
    _descriptionController = TextEditingController(text: 'Краткое описание сценария и условий проживания.');
  }

  @override
  void dispose() {
    _searchController.dispose();
    _nameController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final typography = context.typography;

    return Scaffold(
      appBar: AppBar(title: Text('UI Kit Roommate', style: typography.headline1)),
      body: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [colors.graysWhite, colors.graysLight100],
          ),
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(24, 24, 24, 120),
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1320),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const _HeroCard(
                    title: 'Витрина компонентов клиентской части',
                    description:
                        'Отдельная страница для скриншота во 2 главу ВКР. Здесь собраны типографика, кнопки, поля ввода, фильтры, карточки объявлений и соседей, а также характерные нижние действия.',
                    trailing: Wrap(
                      spacing: 12,
                      runSpacing: 12,
                      children: [
                        FilterCard(title: 'Helvetica Neue'),
                        FilterCard(title: 'Material 3'),
                        FilterCard(title: 'Flutter UI'),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  _SectionCard(
                    title: 'Типографика',
                    subtitle:
                        'Шрифты подключаются в pubspec.yaml, типографические стили централизованы в app_text_style.dart, а общая тема описана в app_theme.dart.',
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Headline 0 / Экранный заголовок', style: typography.headline0),
                        const SizedBox(height: 12),
                        Text('Headline 1 / Заголовок секции', style: typography.headline1),
                        const SizedBox(height: 12),
                        Text('Headline 2 / Заголовок карточки', style: typography.headline2),
                        const SizedBox(height: 12),
                        Text('Body Title / Вторичный акцент и заголовок блока', style: typography.bodyTitle),
                        const SizedBox(height: 12),
                        Text(
                          'Body Description / Основной текст интерфейса, который используется для описаний, подсказок и компактных строк сведений.',
                          style: typography.bodyDescription,
                        ),
                        const SizedBox(height: 12),
                        Text(
                          'Body Small / Компактный вспомогательный текст и подписи к карточкам.',
                          style: typography.bodySmall.copyWith(color: colors.graysText400),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  LayoutBuilder(
                    builder: (context, constraints) {
                      final isWide = constraints.maxWidth >= 1060;
                      if (!isWide) {
                        return Column(
                          children: [
                            _buildControlsSection(context),
                            const SizedBox(height: 24),
                            _buildCardsSection(context),
                          ],
                        );
                      }
                      return Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(child: _buildControlsSection(context)),
                          const SizedBox(width: 24),
                          Expanded(child: _buildCardsSection(context)),
                        ],
                      );
                    },
                  ),
                  const SizedBox(height: 24),
                  _SectionCard(
                    title: 'Нижние действия и контекстные блоки',
                    subtitle:
                        'Закрепленные действия используются в сценариях публикации, отклика, фильтрации и подтверждения шагов формы.',
                    child: Column(
                      children: [
                        DecoratedBox(
                          decoration: BoxDecoration(
                            color: colors.graysWhite,
                            borderRadius: BorderRadius.circular(24),
                            boxShadow: [colors.shadow],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Панель действий экрана', style: typography.headline1),
                                const SizedBox(height: 8),
                                Text(
                                  'Такой блок используется в конце длинного экрана и закрепляет основное действие пользователя.',
                                  style: typography.bodyDescription.copyWith(color: colors.graysText400),
                                ),
                                const SizedBox(height: 16),
                                const PrimaryButton(text: 'Опубликовать объявление'),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        DecoratedBox(
                          decoration: BoxDecoration(
                            color: colors.lightOrange100.withValues(alpha: .18),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Row(
                              children: [
                                const ChipMatch(matchPercent: 95),
                                const SizedBox(width: 16),
                                Expanded(
                                  child: Text(
                                    'Статусные элементы и нижние кнопки объединяются в один сценарий: пользователь видит совпадение, условия и мгновенно переходит к действию.',
                                    style: typography.bodyDescription,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildControlsSection(BuildContext context) {
    final colors = context.colors;
    final typography = context.typography;

    return _SectionCard(
      title: 'Формы, кнопки и фильтры',
      subtitle:
          'Эта группа отражает основной набор элементов, который используется в многошаговых формах, экранах фильтрации и настройке условий проживания.',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Кнопки', style: typography.headline1),
          const SizedBox(height: 12),
          Wrap(
            spacing: 12,
            runSpacing: 12,
            children: [
              const SizedBox(width: 260, child: PrimaryButton(text: 'Основное действие')),
              SizedBox(
                width: 260,
                child: SecondaryButton(text: 'Вторичное действие', onPressed: () {}),
              ),
              TextButton(
                onPressed: () {},
                child: Text('Текстовая ссылка', style: typography.activesButton.copyWith(color: colors.orange)),
              ),
            ],
          ),
          const SizedBox(height: 24),
          Text('Чипы и быстрые фильтры', style: typography.headline1),
          const SizedBox(height: 12),
          Wrap(
            spacing: 12,
            runSpacing: 12,
            children: [
              TinySelectableChip(label: 'Любой', selected: true, onSelected: (_) {}),
              TinySelectableChip(label: 'Женщины', selected: false, onSelected: (_) {}),
              TinySelectableChip(label: 'Мужчины', selected: false, onSelected: (_) {}),
              const ChipMatch(matchPercent: 92),
              FilterCard(
                title: 'Центральный район',
                leading: AppIcon(AppIcons.location, color: colors.orange),
              ),
              FilterCard(
                title: 'Долгосрочная',
                trailing: AppIcon(AppIcons.arrowDown, color: colors.graysIcon500),
              ),
            ],
          ),
          const SizedBox(height: 24),
          Text('Поля ввода', style: typography.headline1),
          const SizedBox(height: 12),
          InputWidget(
            controller: _searchController,
            hintText: 'Район, улица, ЖК',
            prefixIcon: AppIcon(AppIcons.search, color: colors.graysIcon500),
          ),
          const SizedBox(height: 12),
          InputWidget(controller: _nameController, hintText: 'Введите название'),
          const SizedBox(height: 12),
          InputWidget(controller: _descriptionController, hintText: 'Описание', maxLines: 3, needSuffixIcon: false),
          const SizedBox(height: 24),
          Text('Условия проживания', style: typography.headline1),
          const SizedBox(height: 8),
          GroupSwitchRow(
            title: 'Можно с детьми',
            value: _childrenAllowed,
            onChanged: (value) => setState(() => _childrenAllowed = value),
          ),
          GroupSwitchRow(
            title: 'Разрешены животные',
            value: _petsAllowed,
            onChanged: (value) => setState(() => _petsAllowed = value),
          ),
        ],
      ),
    );
  }

  Widget _buildCardsSection(BuildContext context) {
    final typography = context.typography;

    return _SectionCard(
      title: 'Карточки и детальные элементы',
      subtitle:
          'Карточные компоненты используются и в поисковой выдаче, и в детальных экранах. Они задают общий визуальный язык для объявлений, групп и характеристик объекта.',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Карточка объявления', style: typography.headline1),
          const SizedBox(height: 12),
          const ApartmentCard(apartment: _apartment, isFavorite: true),
          const SizedBox(height: 24),
          Text('Карточка группы', style: typography.headline1),
          const SizedBox(height: 12),
          const NeighbourCard(onTap: _noop, group: _group),
          const SizedBox(height: 24),
          Text('Элементы детального экрана', style: typography.headline1),
          const SizedBox(height: 12),
          const Wrap(
            spacing: 24,
            runSpacing: 16,
            children: [
              SizedBox(
                width: 240,
                child: DetailFeatureChip(title: 'Интернет', iconPath: AppIcons.wifi),
              ),
              SizedBox(
                width: 240,
                child: DetailFeatureChip(title: 'Стиральная машина', iconPath: AppIcons.washingMachine),
              ),
              SizedBox(
                width: 240,
                child: DetailFeatureChip(title: 'Кондиционер', iconPath: AppIcons.airConditioner),
              ),
              SizedBox(
                width: 240,
                child: DetailFeatureChip(title: 'Холодильник', iconPath: AppIcons.fridge),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

void _noop() {}

class _HeroCard extends StatelessWidget {
  const _HeroCard({required this.title, required this.description, required this.trailing});

  final String title;
  final String description;
  final Widget trailing;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [colors.lightOrange100.withValues(alpha: .22), colors.graysWhite],
        ),
        boxShadow: [colors.shadow],
      ),
      child: Padding(
        padding: const EdgeInsets.all(28),
        child: LayoutBuilder(
          builder: (context, constraints) {
            final isWide = constraints.maxWidth >= 960;
            if (isWide) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(title, style: context.typography.headline0),
                        const SizedBox(height: 16),
                        Text(description, style: context.typography.bodyDescription),
                      ],
                    ),
                  ),
                  const SizedBox(width: 24),
                  Expanded(
                    flex: 2,
                    child: Align(alignment: Alignment.centerLeft, child: trailing),
                  ),
                ],
              );
            }

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: context.typography.headline0),
                const SizedBox(height: 16),
                Text(description, style: context.typography.bodyDescription),
                const SizedBox(height: 20),
                trailing,
              ],
            );
          },
        ),
      ),
    );
  }
}

class _SectionCard extends StatelessWidget {
  const _SectionCard({required this.title, required this.subtitle, required this.child});

  final String title;
  final String subtitle;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    return DecoratedBox(
      decoration: BoxDecoration(
        color: colors.graysWhite,
        borderRadius: BorderRadius.circular(28),
        boxShadow: [colors.shadow],
      ),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: context.typography.headline0.copyWith(fontSize: 28)),
            const SizedBox(height: 8),
            Text(subtitle, style: context.typography.bodyDescription.copyWith(color: colors.graysText400)),
            const SizedBox(height: 20),
            child,
          ],
        ),
      ),
    );
  }
}
