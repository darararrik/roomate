import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:roomate/presentation/app/auth/state/auth/auth_notifier.dart';
import 'package:roomate/presentation/constants/constants.dart';
import 'package:roomate/presentation/utils/utils.dart';
import 'package:roomate/presentation/widgets/widgets.dart';

@RoutePage()
class EnterPhoneNumberScreen extends HookConsumerWidget {
  const EnterPhoneNumberScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = useTextEditingController();
    final isComplete = useState(false);
    final node = useFocusNode();
    final authNotifier = ref.read(authProvider.notifier);

    final route = ModalRoute.of(context);

    useEffect(() {
      void handleFocus() async {
        if (route != null && route.animation != null) {
          if (route.animation!.status != AnimationStatus.completed) {
            route.animation!.status.isCompleted;
          }
        }
        await Future.delayed(const Duration(milliseconds: 200));

        if (node.canRequestFocus) {
          node.requestFocus();
        }
      }

      handleFocus();
      return null;
    }, [node, route]);
    useEffect(() {
      void listener() {
        isComplete.value = AppValidators.phone(controller.text);
      }

      controller.addListener(listener);
      return () => controller.removeListener(listener);
    }, [controller]);

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SafeArea(
        child: Padding(
          padding: const P(horizontal: S.p16, vertical: S.p8),
          child: PrimaryButton(
            onPressed: disableIf(isComplete.value, () => authNotifier.openEnterCodeScreen()),
            text: context.l10n.next,
          ),
        ),
      ),
      body: CustomScrollView(
        physics: const ClampingScrollPhysics(),
        slivers: [
          SliverAppBar(centerTitle: false, title: Text(context.l10n.register)),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: const P(horizontal: S.p16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const P(vertical: S.p28, bottom: S.p10),
                    child: Column(
                      spacing: S.p8,
                      children: [
                        Text(
                          context.l10n.enterYourPhoneNumber,
                          style: context.typography.headline0,
                        ),
                        Text(
                          context.l10n.descriptionSMSCode,
                          style: context.typography.headline2.copyWith(
                            color: context.colors.graysText400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      DecoratedBox(
                        decoration: BoxDecoration(
                          color: context.colors.graysInput200,
                          borderRadius: BorderRadius.circular(S.p16),
                          border: Border.all(color: context.colors.graysStroke300),
                        ),
                        child: Padding(
                          padding: const P(horizontal: S.p12, vertical: S.p20),
                          child: Row(
                            mainAxisAlignment: .center,
                            spacing: S.p8,
                            children: [
                              Image.asset(AppIcons.ruFlag, width: S.p24),
                              Text(
                                context.l10n.russiaPhonePrefix,
                                style: context.typography.inputTextRegular.copyWith(
                                  fontWeight: FontWeight.bold,
                                  fontSize: S.p18,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: S.p12),
                      Expanded(
                        child: InputWidget(
                          focusNode: node,
                          controller: controller,
                          keyboardType: TextInputType.phone,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                            RuPhoneFormatter(),
                          ],
                          onChanged: (value) => authNotifier.setPhoneNumber(value),
                          style: context.typography.inputTextRegular.copyWith(
                            fontWeight: FontWeight.w600,
                            fontSize: S.p18,
                            letterSpacing: 1.2,
                          ),
                          decoration: InputDecoration(
                            hintText: context.l10n.phonePlaceholder,
                            hintStyle: context.appTheme.inputDecorationTheme.hintStyle?.copyWith(
                              fontSize: S.p18,
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
}
