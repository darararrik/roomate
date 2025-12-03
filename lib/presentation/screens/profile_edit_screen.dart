import 'package:flutter/material.dart' hide BottomSheet;

import 'package:auto_route/auto_route.dart';

import 'package:roomate/presentation/constants/constants.dart';
import 'package:roomate/presentation/routing/app_routing.gr.dart';
import 'package:roomate/presentation/utils/utils.dart';
import 'package:roomate/presentation/widgets/widgets.dart';

@RoutePage()
class ProfileEditScreen extends StatelessWidget {
  const ProfileEditScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          AB(title: Text(context.l10n.profile, style: context.textStyle.headline1), centerTitle: false),
          SliverPadding(
            padding: const P(horizontal: S.p16, vertical: S.p24),
            sliver: SliverToBoxAdapter(
              child: Padding(
                padding: const P(right: S.p12),
                child: Row(
                  mainAxisAlignment: .spaceBetween,
                  crossAxisAlignment: .center,
                  children: [
                    const Padding(
                      padding: P(vertical: S.p4, horizontal: S.p12),
                      child: CircleAvatar(radius: S.p26),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: .start,
                        children: [
                          Text('Сергей Иванов', style: context.textStyle.bodyTitle),
                          const SizedBox(height: S.p8),
                          Text(
                            '+7 913 123 12 34',
                            style: context.textStyle.bodyDescription.copyWith(color: context.colors.text400),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: S.p4),
                    InkWell(
                      onTap: () => context.pushRoute(const ProfileDataEditRoute()),
                      child: Padding(
                        padding: const P(all: S.p4),
                        child: AppIcon(AppIcons.edit, color: context.colors.orange100),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: const P(horizontal: S.p16),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: S.p8, vertical: S.p4),
                    child: Text(context.l10n.basicSection, style: context.textStyle.headline2),
                  ),
                  ProfileListItem(
                    iconPath: AppIcons.flash,
                    title: context.l10n.traitSociability,
                    value: 'Амбиверт',

                    onTap: () => showModalBottomSheet(
                      context: context,
                      useRootNavigator: true,
                      isScrollControlled: true,

                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(top: Radius.circular(S.p24)),
                      ),
                      builder: (context) {
                        return const TraitBottomSheet();
                      },
                    ),
                  ),
                  ProfileListItem(
                    iconPath: AppIcons.drink,
                    title: context.l10n.traitBadHabits,
                    value: 'Не выбраны',
                    onTap: () {},
                  ),
                  ProfileListItem(
                    iconPath: AppIcons.people,
                    title: context.l10n.traitGuestFrequency,
                    value: 'Иногда',
                    onTap: () {},
                  ),
                  ProfileListItem(
                    iconPath: AppIcons.sleep,
                    title: context.l10n.traitSleepMode,
                    value: 'Жаворонок',
                    onTap: () {},
                  ),
                  ProfileListItem(
                    iconPath: AppIcons.animal,
                    title: context.l10n.traitPetAttitude,
                    value: 'Положительно',
                    onTap: () {},
                  ),
                ].separated(const SizedBox(height: S.p8)),
              ),
            ),
          ),
          SliverPadding(
            padding: const P(horizontal: S.p16, vertical: S.p24),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: S.p8, vertical: S.p4),
                    child: Text(context.l10n.roommateSearchSection, style: context.textStyle.headline2),
                  ),
                  ProfileListItem(
                    iconPath: AppIcons.male,
                    title: context.l10n.traitGender,
                    value: 'Не выбран',
                    onTap: () {},
                  ),
                  ProfileListItem(
                    iconPath: AppIcons.cake,
                    title: context.l10n.traitAge,
                    value: 'Не выбраны',
                    onTap: () {},
                  ),
                ].separated(const SizedBox(height: S.p8)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
