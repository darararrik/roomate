import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:auto_route/auto_route.dart';

import 'package:roomate/presentation/constants/spacing.dart';
import 'package:roomate/presentation/routing/app_routing.gr.dart';
import 'package:roomate/presentation/utils/utils.dart';
import 'package:roomate/presentation/widgets/a_b.dart';
import 'package:roomate/presentation/widgets/buttons/primary_btn.dart';

@RoutePage()
class SmsCodeScreen extends StatefulWidget {
  const SmsCodeScreen({super.key});

  @override
  State<SmsCodeScreen> createState() => _SmsCodeScreenState();
}

class _SmsCodeScreenState extends State<SmsCodeScreen> {
  final List<TextEditingController> _controllers = List.generate(4, (_) => TextEditingController());
  final List<FocusNode> _focusNodes = List.generate(4, (_) => FocusNode());

  @override
  void dispose() {
    for (final c in _controllers) {
      c.dispose();
    }
    for (final f in _focusNodes) {
      f.dispose();
    }
    super.dispose();
  }

  void _onChanged(String value, int index) {
    if (value.isNotEmpty && index < _focusNodes.length - 1) {
      _focusNodes[index + 1].requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            AB(title: Text(context.l10n.confirmation), centerTitle: false),
            SliverFillRemaining(
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
                          Text(context.l10n.enterSMSCode, style: context.textStyle.headline1),
                          const SizedBox(height: S.p8),
                          Text(
                            context.l10n.descriptionSMSCode2,
                            style: context.textStyle.headline2.copyWith(color: context.colors.text400),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: S.p10),
                    Padding(
                      padding: const P(horizontal: S.p44),
                      child: Row(
                        children: List.generate(4, (index) {
                          return Expanded(
                            child: KeyboardListener(
                              focusNode: FocusNode(), // отдельный listener
                              onKeyEvent: (KeyEvent event) {
                                if (event is KeyDownEvent &&
                                    event.logicalKey == LogicalKeyboardKey.backspace &&
                                    _controllers[index].text.isEmpty &&
                                    index > 0) {
                                  _focusNodes[index - 1].requestFocus();
                                }
                              },
                              child: TextField(
                                style: context.textStyle.activesCodeNumber,
                                decoration: InputDecoration(
                                  fillColor: context.colors.white,
                                  filled: true,
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(S.p16),
                                    borderSide: BorderSide(width: S.p1, color: context.colors.stroke300),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(S.p16),
                                    borderSide: BorderSide(width: S.p1, color: context.colors.orange),
                                  ),
                                ),
                                maxLength: 1,
                                buildCounter: (_, {required currentLength, required isFocused, maxLength}) => null,
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                controller: _controllers[index],
                                focusNode: _focusNodes[index],
                                onChanged: (val) => _onChanged(val, index),
                                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                              ),
                            ),
                          );
                        }).separated(const SizedBox(width: S.p16)),
                      ),
                    ),
                    const SizedBox(height: S.p24),
                    Padding(
                      padding: const P(all: S.p12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(context.l10n.didntReceiveTheCode, style: context.textStyle.activesLabel),
                          const SizedBox(width: S.p4),
                          GestureDetector(
                            onTap: () {
                              // TODO: добавить логику повторной отправки
                            },
                            child: Text(
                              context.l10n.sendAgain,
                              style: context.textStyle.activesLabel.copyWith(
                                color: context.colors.orange,
                                decoration: TextDecoration.underline,
                                decorationColor: context.colors.orange,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    PrimaryButton.botPadding(
                      titleText: Text(context.l10n.next),
                      onPressed: () => context.pushRoute(const QuizRoute()),
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
