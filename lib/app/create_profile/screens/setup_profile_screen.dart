import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:roomate/lib.dart';

@RoutePage()
class SetupProfileScreen extends HookConsumerWidget {
  const SetupProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = context.l10n;
    final state = ref.watch(createProfileProvider);
    final notifier = ref.read(createProfileProvider.notifier);
    final hooks = _useProfileSetupLogic(ref, state, locale, notifier);
    return Scaffold(
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const P(horizontal: S.p16, vertical: S.p20),
          child: PrimaryButton(onPressed: notifier.submitProfileDetails, text: context.l10n.next),
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text(context.l10n.profileDetailsTitle),
        leading: BB(onPressed: notifier.pop),
      ),
      body: ListView(
        padding: const P(horizontal: S.p16, bottom: S.p60),
        children: [
          Center(
            child: Padding(
              padding: const P(vertical: S.p4, horizontal: S.p12),
              child: AvatarWidget(
                //TODO: implement avatar upload
                onEditPressed: () {},
                image: AssetImage(state.avatarUrl),
              ),
            ),
          ),
          const SizedBox(height: S.p28),
          Center(child: Text(locale.letsGetToKnowEachOther, style: context.typography.headline1)),
          const SizedBox(height: S.p8),
          Center(
            child: Text(
              locale.pleaseProvideRealData,
              textAlign: TextAlign.center,
              style: context.typography.headline2.copyWith(color: context.colors.graysText400),
            ),
          ),
          const SizedBox(height: S.p28),
          Column(
            spacing: S.p12,
            children: [
              InputWidget(
                controller: hooks.firstNameController,
                hintText: locale.name,
                onChanged: (val) => notifier.onChangedFirstName(val),
                errorText: state.firstNameError,
                focusNode: hooks.firstNameFocusNode,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
              ),
              InputWidget(
                controller: hooks.lastNameController,
                hintText: locale.lastName,
                onChanged: (val) => notifier.onChangedLastName(val),
                errorText: state.lastNameError,
                focusNode: hooks.lastNameFocusNode,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
              ),
              Row(
                spacing: S.p12,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: InputWidget(
                      controller: hooks.ageController,
                      hintText: locale.age,
                      onChanged: (val) => notifier.onChangedAge(val),
                      errorText: state.ageError,
                      focusNode: hooks.ageFocusNode,
                      keyboardType: TextInputType.number,
                      maxLenght: 2,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    ),
                  ),
                  Expanded(
                    child: InputWidget(
                      readOnly: true,
                      controller: hooks.genderController,
                      hintText: locale.gender,
                      errorText: state.genderError,
                      focusNode: hooks.genderFocusNode,
                      needSuffixIcon: false,
                      onTap: () => ref
                          .read(navigationServiceProvider)
                          .showBottomSheet(
                            GenderBottomSheet(
                              onSelected: (gender, index, isSelected) => notifier.setGender(gender),
                              selectedGender: state.gender,
                            ),
                          ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _ProfileSetupHooks {
  _ProfileSetupHooks({
    required this.firstNameController,
    required this.lastNameController,
    required this.ageController,
    required this.genderController,
    required this.firstNameFocusNode,
    required this.lastNameFocusNode,
    required this.ageFocusNode,
    required this.genderFocusNode,
  });
  final TextEditingController firstNameController;
  final TextEditingController lastNameController;
  final TextEditingController ageController;
  final TextEditingController genderController;
  final FocusNode firstNameFocusNode;
  final FocusNode lastNameFocusNode;
  final FocusNode ageFocusNode;
  final FocusNode genderFocusNode;
}

_ProfileSetupHooks _useProfileSetupLogic(
  WidgetRef ref,
  UserState state,
  AppLocalizations locale,
  CreateProfileNotifier notifier,
) {
  final firstNameController = useTextEditingController();
  final lastNameController = useTextEditingController();
  final ageController = useTextEditingController();
  final genderController = useTextEditingController();

  final firstNameFocusNode = useFocusNode();
  final lastNameFocusNode = useFocusNode();
  final ageFocusNode = useFocusNode();
  final genderFocusNode = useFocusNode();

  useEffect(() {
    final newText = state.gender?.localizedName(locale) ?? '';
    if (genderController.text != newText) {
      genderController.text = newText;
    }
    return null;
  }, [state.gender, locale]);

  useClearErrorOnFocus(firstNameFocusNode, notifier.clearFirstNameError);
  useClearErrorOnFocus(lastNameFocusNode, notifier.clearLastNameError);
  useClearErrorOnFocus(ageFocusNode, notifier.clearAgeError);
  useClearErrorOnFocus(genderFocusNode, notifier.clearGenderError);

  return _ProfileSetupHooks(
    firstNameController: firstNameController,
    lastNameController: lastNameController,
    ageController: ageController,
    genderController: genderController,
    firstNameFocusNode: firstNameFocusNode,
    lastNameFocusNode: lastNameFocusNode,
    ageFocusNode: ageFocusNode,
    genderFocusNode: genderFocusNode,
  );
}
