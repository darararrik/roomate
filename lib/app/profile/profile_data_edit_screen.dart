import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:roomate/app/profile/state/profile_edit_notifier.dart';
import 'package:roomate/lib.dart';

@RoutePage()
class ProfileDataEditScreen extends ConsumerWidget {
  const ProfileDataEditScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profileState = ref.watch(globalProfileProvider);
    return profileState.when(
      data: (_) => const _ProfileDataEditBody(),
      error: (e, stackTrace) => ErrorView(error: e.toString()),
      loading: () => const Scaffold(body: LoadingWidget()),
    );
  }
}

class _ProfileDataEditBody extends HookConsumerWidget {
  const _ProfileDataEditBody();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = context.l10n;
    final editState = ref.watch(profileEditProvider);
    final notifier = ref.read(profileEditProvider.notifier);
    final firstNameController = useTextEditingController(
      text: editState.firstName,
    );
    final lastNameController = useTextEditingController(
      text: editState.lastName,
    );
    final ageController = useTextEditingController(
      text: editState.age > 0 ? editState.age.toString() : '',
    );
    final genderController = useTextEditingController(
      text: editState.gender.localizedName(locale),
    );

    useEffect(() {
      _syncController(firstNameController, editState.firstName);
      return null;
    }, [editState.firstName]);

    useEffect(() {
      _syncController(lastNameController, editState.lastName);
      return null;
    }, [editState.lastName]);

    useEffect(() {
      _syncController(genderController, editState.gender.localizedName(locale));
      return null;
    }, [editState.gender, locale]);

    return Scaffold(
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const P(horizontal: S.p16, vertical: S.p20),
          child: PrimaryButton(
            text: editState.isSaving ? locale.saving : locale.save,
            onPressed: editState.canSave ? notifier.save : null,
          ),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          AB(
            title: Text(
              locale.updateData,
              style: context.typography.headline1.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
            centerTitle: false,
          ),
          SliverPadding(
            padding: const P(vertical: S.p24),
            sliver: SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Padding(
                    padding: P(horizontal: S.p12, vertical: S.p4),
                    child: CircleAvatar(radius: S.p50),
                  ),
                  const SizedBox(height: S.p12),
                  Text(
                    locale.editPhoto,
                    style: context.typography.bodyDescription.copyWith(
                      color: context.colors.lightOrange100,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: const P(horizontal: S.p16),
            sliver: SliverToBoxAdapter(
              child: Column(
                spacing: S.p12,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InputWidget(
                    controller: firstNameController,
                    hintText: locale.name,
                    errorText: editState.firstNameError,
                    textInputAction: TextInputAction.next,
                    onChanged: notifier.changeFirstName,
                  ),
                  InputWidget(
                    controller: lastNameController,
                    hintText: locale.lastName,
                    errorText: editState.lastNameError,
                    textInputAction: TextInputAction.next,
                    onChanged: notifier.changeLastName,
                  ),
                  Row(
                    spacing: S.p12,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: InputWidget(
                          controller: ageController,
                          hintText: locale.age,
                          readOnly: true,
                          needSuffixIcon: false,
                        ),
                      ),
                      Expanded(
                        child: InputWidget(
                          readOnly: true,
                          controller: genderController,
                          hintText: locale.gender,
                          needSuffixIcon: false,
                          onTap: () => ref
                              .read(navigationServiceProvider)
                              .showBottomSheet(
                                GenderBottomSheet(
                                  selectedGender: editState.gender,
                                  onSelected: (gender, index, isSelected) {
                                    notifier.changeGender(gender);
                                  },
                                ),
                              ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _syncController(TextEditingController controller, String text) {
    if (controller.text == text) return;
    controller.value = TextEditingValue(
      text: text,
      selection: TextSelection.collapsed(offset: text.length),
    );
  }
}
