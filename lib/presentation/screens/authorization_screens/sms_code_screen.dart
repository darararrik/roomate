import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'package:roomate/presentation/constants/constants.dart';
import 'package:roomate/presentation/routing/app_routing.gr.dart';
import 'package:roomate/presentation/utils/utils.dart';
import 'package:roomate/presentation/widgets/buttons/primary_button.dart';
import 'package:roomate/state/sms_notifier/sms_notifier_provider.dart';

@RoutePage()
class SmsCodeScreen extends HookConsumerWidget {
  const SmsCodeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final timerCount = ref.watch(smsProvider);
    final isComplete = useState(false);

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        bottomNavigationBar: Padding(
          padding: const P(horizontal: S.p16, bottom: S.p32),
          child: PrimaryButton(
            onPressed: isComplete.value
                ? () => context.pushRoute(const QuizRoute())
                : null,
            text: context.l10n.next,
          ),
        ),
        body: CustomScrollView(
          physics: const ClampingScrollPhysics(),
          slivers: [
            SliverAppBar(
              title: Text(context.l10n.confirmation),
              centerTitle: false,
            ),
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
                          Text(
                            context.l10n.enterSMSCode,
                            style: context.typography.headline0,
                          ),
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
                    PinCodeTextField(
                      onChanged: (value) {
                        isComplete.value = value.length == 4;
                      },
                      appContext: context,
                      autoFocus: true,
                      length: 4,
                      backgroundColor: context.colors.graysWhite,
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      mainAxisAlignment: MainAxisAlignment.center,
                      pinTheme: PinTheme(
                        fieldHeight: S.p56,
                        fieldWidth: S.p56,
                        shape: PinCodeFieldShape.box,
                        borderRadius: BorderRadius.circular(S.p12),
                        selectedBorderWidth: S.p1,
                        inactiveBorderWidth: S.p1,
                        activeBorderWidth: S.p1,
                        activeColor: context.colors.graysStroke300,
                        activeFillColor: context.colors.graysStroke300,
                        selectedColor: context.colors.orange,
                        inactiveColor: context.colors.graysStroke300,
                        fieldOuterPadding: const P(horizontal: S.p12),
                      ),
                    ),
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
                              onTap: timerCount == 0
                                  ? () => ref
                                        .read(smsProvider.notifier)
                                        .resetTimer()
                                  : null,
                              child: Text(
                                timerCount == 0
                                    ? context.l10n.sendAgain
                                    : '${context.l10n.sendAgain} (00:${timerCount.toString().padLeft(2, '0')})',
                                style: context.typography.activesLabel.copyWith(
                                  decoration: TextDecoration.underline,
                                  decorationColor: timerCount == 0
                                      ? context.colors.orange
                                      : context.colors.lightOrange100,
                                  color: timerCount == 0
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
