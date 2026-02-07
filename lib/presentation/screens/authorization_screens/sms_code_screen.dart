import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'dart:async';

import 'package:roomate/presentation/constants/constants.dart';
import 'package:roomate/presentation/routing/app_routing.gr.dart';
import 'package:roomate/presentation/utils/utils.dart';
import 'package:roomate/presentation/widgets/primary_btn.dart';

@RoutePage()
class SmsCodeScreen extends HookConsumerWidget {
  const SmsCodeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 1. Вместо late TextEditingController и dispose():
    // Хуки сами создадут и уничтожат эти объекты.
    final controllers = List.generate(4, (_) => useTextEditingController());
    final focusNodes = List.generate(4, (_) => useFocusNode());

    // 2. Аналог ValueNotifier для таймера
    final timerCount = useState(59);

    // 3. Состояние кнопки (вычисляемое на лету)
    final isComplete = useState(false);

    // 4. Таймер через useEffect (запускается один раз)
    useEffect(() {
      final timer = Timer.periodic(const Duration(seconds: 1), (t) {
        if (timerCount.value > 0) timerCount.value--;
      });
      return timer.cancel; // Dispose произойдет автоматически!
    }, []);

    // Функция валидации
    void validate() {
      isComplete.value = controllers.every((c) => c.text.isNotEmpty);
    }

    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(title: Text(context.l10n.confirmation)),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Padding(
                padding: const P(horizontal: S.p16),
                child: Column(
                  children: [
                    // ... Заголовки (как в твоем коде) ...

                    // Поля ввода
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        4,
                        (index) => SizedBox(
                          width: S.p56,
                          child: TextField(
                            controller: controllers[index],
                            focusNode: focusNodes[index],
                            onChanged: (val) {
                              if (val.isNotEmpty && index < 3) {
                                focusNodes[index + 1].requestFocus();
                              }
                              validate();
                            },
                            // ... Стилизация ...
                          ),
                        ),
                      ).separated(const SizedBox(width: S.p12)),
                    ),

                    const Spacer(),

                    // Таймер (просто используем timerCount.value, ребилд только тут)
                    Center(
                      child: Column(
                        children: [
                          Text(context.l10n.didntReceiveTheCode),
                          GestureDetector(
                            onTap: timerCount.value == 0
                                ? () => timerCount.value = 59
                                : null,
                            child: Text(
                              timerCount.value == 0
                                  ? context.l10n.sendAgain
                                  : '${context.l10n.sendAgain} (00:${timerCount.value})',
                              style: TextStyle(
                                color: timerCount.value == 0
                                    ? context.colors.orange
                                    : context.colors.orange100,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Кнопка (используем isComplete.value)
                    PrimaryButton(
                      onPressed: isComplete.value
                          ? () => context.pushRoute(const QuizRoute())
                          : null,
                      titleText: Text(context.l10n.next),
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
