// lib/presentation/widgets/dynamic_ad_form.dart
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:roomate/domain/models/selection_category.dart';
import 'package:roomate/domain/utils/extensions/currency_x.dart';
import 'package:roomate/presentation/constants/constants.dart';
import 'package:roomate/presentation/routing/app_routing.gr.dart';
import 'package:roomate/presentation/screens/create_ad/widgets/add_media_sheet.dart';
import 'package:roomate/presentation/utils/extensions/context_x.dart';
import 'package:roomate/presentation/utils/p.dart';
import 'package:roomate/presentation/widgets/buttons/opacity_button.dart';
import 'package:roomate/presentation/widgets/widgets.dart'; // Твои виджеты
import 'package:roomate/state/createAd/create_ad_notifier.dart';

class DynamicAdForm extends HookConsumerWidget {
  const DynamicAdForm({super.key, required this.fields, this.isCurrencyTags});
  final List<AdFieldConfig> fields;
  final bool? isCurrencyTags;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView.separated(
      padding: const P(horizontal: S.p16, bottom: S.p86),
      itemCount: fields.length,
      separatorBuilder: (_, _) => const SizedBox(height: S.p12),
      itemBuilder: (context, index) {
        final field = fields[index];
        return switch (field) {
          TagGroupField tagField => _DynamicTagGroup(
            field: tagField,
            isCurrencyTags: isCurrencyTags,
          ),
          InputField inputField => _DynamicInputField(field: inputField),
          AddressField f => _DynamicAddressField(field: f), // Добавили
          MediaField f => _DynamicMediaField(field: f), // Добавили
        };
      },
    );
  }
}

// Вспомогательный виджет для тегов
class _DynamicTagGroup extends ConsumerWidget {
  const _DynamicTagGroup({required this.field, this.isCurrencyTags});
  final TagGroupField field;
  final bool? isCurrencyTags;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Читаем только этот список тегов из стейта
    final savedTags = ref.watch(
      createAdProvider.select(
        (s) => List<String>.from(s.formValues[field.id] ?? []),
      ),
    );

    return SelectableTagGroup(
      title: field.title,
      description: field.description,
      tags: field.tags,
      isRadio: field.isRadio,
      selectedTags: savedTags, // Прокидываем галочки
      onTagSelected: (tag, isSelected) {
        if (isCurrencyTags == true) {
          ref.read(createAdProvider.notifier).updateCurrency(tag);
        }
        ref
            .read(createAdProvider.notifier)
            .updateDynamicTags(
              fieldId: field.id,
              tag: tag,
              isSelected: isSelected,
              isRadio: field.isRadio,
            );
      },
    );
  }
}

// Вспомогательный хук-виджет для текстовых полей
class _DynamicInputField extends HookConsumerWidget {
  const _DynamicInputField({required this.field});
  final InputField field;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Читаем начальное значение из стейта
    final savedValue = ref.read(createAdProvider).formValues[field.id] ?? '';

    // Инициализируем контроллер с сохраненным значением
    final controller = useTextEditingController(text: savedValue.toString());
    final selectedCurrencySymbol = ref.watch(
      createAdProvider.select((s) => s.selectedCurrency?.symbol),
    );
    final effectiveSuffix = field.id == 'price' || field.id == 'deposit'
        ? selectedCurrencySymbol
        : field.suffix;
    return TextFieldWithTitle.withSuffix(
      title: field.title,
      hintText: field.hintText,
      controller: controller,
      suffix: effectiveSuffix,
      onChanged: (value) {
        // Записываем ввод в стейт при каждом нажатии клавиши
        ref.read(createAdProvider.notifier).updateFieldValue(field.id, value);
      },
    );
  }
}
// --- Новые виджеты ---

class _DynamicAddressField extends ConsumerWidget {
  const _DynamicAddressField({required this.field});
  final AddressField field;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Подписываемся на адрес из общего стейта
    final currentAddress = ref.watch(createAdProvider.select((s) => s.address));

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(field.title, style: context.typography.headline1),
        if (field.description != null) ...[
          const SizedBox(height: S.p8),
          Text(
            field.description!,
            style: context.typography.bodyDescription.copyWith(
              color: context.colors.graysText400,
            ),
          ),
        ],
        Padding(
          padding: const P(vertical: S.p12),
          child: RegionListItem(
            iconPath: AppIcons.city,
            title: currentAddress ?? context.l10n.moscowCity,
            subTitle: context.l10n.locationDetailsHint,
            onTap: () => context.pushRoute(
              LocationRoute(
                onSelected: (address) {
                  // Вызываем метод нотификатора для адреса
                  // ref.read(createAdProvider.notifier).updateAddress(address);
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _DynamicMediaField extends ConsumerWidget {
  const _DynamicMediaField({required this.field});
  final MediaField field;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(field.title, style: context.typography.headline1),
        if (field.description != null) ...[
          const SizedBox(height: S.p8),
          Text(
            field.description!,
            style: context.typography.bodyDescription.copyWith(
              color: context.colors.graysText400,
            ),
          ),
        ],
        Padding(
          padding: const P(vertical: S.p12),
          child: OpacityButton(
            icon: AppIcon(
              field.isPhoto ? AppIcons.camera : AppIcons.video,
              color: context.colors.orange,
            ),
            bgColor: context.colors.opacityOrange20,
            color: context.colors.orange,
            height: S.p56,
            onPressed: () {
              FocusScope.of(context).requestFocus(FocusNode());
              showModalBottomSheet(
                context: context,
                builder: (context) => AddMediaSheet(isPhoto: field.isPhoto),
              );
            },
            child: Text(
              field.isPhoto ? context.l10n.addPhoto : context.l10n.addVideo,
            ),
          ),
        ),
      ],
    );
  }
}
