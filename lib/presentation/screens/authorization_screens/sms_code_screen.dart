import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'package:roomate/presentation/constants/constants.dart';
import 'package:roomate/presentation/routing/app_routing.gr.dart';
import 'package:roomate/presentation/utils/utils.dart';
import 'package:roomate/presentation/widgets/buttons/primary_btn.dart';
import 'package:roomate/state/sms_notifier/sms_notifier_provider.dart';

@RoutePage()
class SmsCodeScreen extends HookConsumerWidget {
  const SmsCodeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final timerCount = ref.watch(smsProvider);
    final isComplete = useState(false);

    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
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
                    const SizedBox(height: S.p28),
                    Text(
                      context.l10n.enterSMSCode,
                      style: context.typography.headline0.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    const SizedBox(height: S.p8),
                    Text(
                      context.l10n.descriptionSMSCode2,
                      style: context.typography.headline2.copyWith(
                        color: context.colors.text400,
                      ),
                    ),
                    const SizedBox(height: S.p40),
                    PinCodeTextField(
                      onChanged: (value) {
                        isComplete.value = value.length == 4;
                      },
                      appContext: context,
                      length: 4,
                      backgroundColor: context.colors.white,
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      mainAxisAlignment: MainAxisAlignment.center,
                      pinTheme: PinTheme(
                        fieldHeight: S.p56,
                        fieldWidth: S.p56,
                        shape: PinCodeFieldShape.box,
                        borderRadius: BorderRadius.circular(S.p12),
                        activeColor: context.colors.stroke300,
                        activeFillColor: context.colors.stroke300,
                        selectedColor: context.colors.orange,
                        inactiveColor: context.colors.stroke300,
                        fieldOuterPadding: const P(horizontal: S.p12),
                      ),
                    ),
                    const SizedBox(height: S.p20),
                    Center(
                      child: Column(
                        children: [
                          Text(
                            context.l10n.didntReceiveTheCode,
                            style: context.typography.activesLabel,
                          ),
                          const SizedBox(height: S.p4),
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
                                color: timerCount == 0
                                    ? context.colors.orange
                                    : context.colors.orange100,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const P(bottom: S.p20),
                      child: PrimaryButton(
                        onPressed: isComplete.value
                            ? () => context.pushRoute(const QuizRoute())
                            : null,
                        title: Text(context.l10n.next),
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
