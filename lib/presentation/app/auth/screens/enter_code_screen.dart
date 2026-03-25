import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'package:roomate/presentation/app/auth/state/auth/auth_notifier.dart';
import 'package:roomate/presentation/app/auth/state/sms_notifier/sms_notifier_provider.dart';
import 'package:roomate/presentation/app/auth/widgets/code_box_input.dart';
import 'package:roomate/presentation/constants/constants.dart';
import 'package:roomate/presentation/utils/utils.dart';
import 'package:roomate/presentation/widgets/buttons/primary_button.dart';

@RoutePage()
class EnterCodeScreen extends HookConsumerWidget {
  const EnterCodeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final smsState = ref.watch(smsProvider);
    final smsNotifier = ref.watch(smsProvider.notifier);
    final authNotifier = ref.read(authProvider.notifier);
    final authState = ref.watch(authProvider);
    final pinController = useMemoized(() => PinInputController());
    useEffect(() {
      if (authState.isError) {
        pinController.triggerError(); // Это активирует флаг isError в ячейках и тряску
      } else {
        pinController.clearError();
      }
      return null;
    }, [authState.isError]);
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: SafeArea(
          child: Padding(
            padding: const P(horizontal: S.p16, vertical: S.p8),
            child: PrimaryButton(
              onPressed: disableIf(
                authState.isPinComplete,
                () => authNotifier.openOnBoardingScreen(),
              ),
              text: context.l10n.next,
            ),
          ),
        ),
        body: CustomScrollView(
          physics: const ClampingScrollPhysics(),
          slivers: [
            SliverAppBar(title: Text(context.l10n.confirmation), centerTitle: false),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Padding(
                padding: const P(horizontal: S.p16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const P(vertical: S.p28),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(context.l10n.enterSMSCode, style: context.typography.headline0),
                          const SizedBox(height: S.p8),
                          Text(
                            context.l10n.descriptionSMSCode2,
                            style: context.typography.headline2.copyWith(
                              color: context.colors.graysText400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: S.p10),
                    PinInput(
                      pinController: pinController,
                      length: 4,
                      onChanged: (pin) => authNotifier.updateCode(pin),
                      builder: (context, cells) => CodeBoxInput(cells: cells),
                    ), // Блок с текстом ошибки
                    AnimatedSwitcher(
                      duration: const Duration(milliseconds: 200),
                      child: authState.isError && authState.errorMessage != null
                          ? Padding(
                              key: const ValueKey('error_text'),
                              padding: const EdgeInsets.only(top: S.p16),
                              child: Align(
                                alignment: .center,
                                child: Text(
                                  authState.errorMessage!,
                                  style: context.typography.bodyTitle.copyWith(
                                    color: context.colors.red,
                                  ),
                                ),
                              ),
                            )
                          : const SizedBox.shrink(),
                    ), // Пустое место, если ошибки нет
                    const SizedBox(height: S.p24),
                    Padding(
                      padding: const P(vertical: S.p12),
                      child: Center(
                        child: Column(
                          children: [
                            Text(
                              context.l10n.didntReceiveTheCode,
                              style: context.typography.activesLabel,
                            ),
                            const SizedBox(height: S.p12),
                            GestureDetector(
                              onTap: smsState.canResend ? smsNotifier.resetTimer : null,
                              child: Text(
                                smsState.resendText(context.l10n),
                                style: context.typography.activesLabel.copyWith(
                                  decoration: TextDecoration.underline,
                                  decorationColor: smsState.canResend
                                      ? context.colors.orange
                                      : context.colors.lightOrange100,
                                  color: smsState.canResend
                                      ? context.colors.orange
                                      : context.colors.lightOrange100,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
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
