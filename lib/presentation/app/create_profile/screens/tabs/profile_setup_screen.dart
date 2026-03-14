import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:roomate/presentation/constants/constants.dart';
import 'package:roomate/presentation/utils/utils.dart';
import 'package:roomate/presentation/widgets/common/avatar_widget.dart';
import 'package:roomate/presentation/widgets/widgets.dart';

@RoutePage()
class ProfileSetupScreen extends HookConsumerWidget {
  const ProfileSetupScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final firstNameController = useTextEditingController();
    final lastNameController = useTextEditingController();
    final ageController = useTextEditingController();
    final genderController = useTextEditingController();

    final l10n = context.l10n;

    return ListView(
      padding: const P(horizontal: S.p16, bottom: S.p60),
      children: [
        const Center(
          child: Padding(
            padding: P(vertical: S.p4, horizontal: S.p12),
            child: AvatarWidget(),
          ),
        ),
        const SizedBox(height: S.p28),
        Center(
          child: Text(
            l10n.letsGetToKnowEachOther,
            style: context.typography.headline1,
          ),
        ),
        const SizedBox(height: S.p8),
        Center(
          child: Text(
            l10n.pleaseProvideRealData,
            textAlign: TextAlign.center,
            style: context.typography.headline2.copyWith(
              color: context.colors.graysText400,
            ),
          ),
        ),
        const SizedBox(height: S.p28),
        Column(
          spacing: S.p12,
          children: [
            InputWidget(controller: firstNameController, hintText: l10n.name),
            InputWidget(
              controller: lastNameController,
              hintText: l10n.lastName,
            ),
            Row(
              spacing: S.p12,
              children: [
                Expanded(
                  child: InputWidget(
                    controller: ageController,
                    hintText: l10n.age,
                  ),
                ),
                Expanded(
                  child: InputWidget(
                    readOnly: true,
                    controller: genderController,
                    hintText: l10n.gender,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
