import 'package:flutter/material.dart';
//TODO: Вынести логику в блок
// Предполагаемые импорты из вашего проекта
import 'package:roomate/presentation/constants/constants.dart';
import 'package:roomate/presentation/utils/utils.dart'; // Для ContextExtensions
import 'package:roomate/presentation/widgets/background.dart';
import 'package:roomate/presentation/widgets/buttons/elev_button_x.dart'; // Для PButton

// Вспомогательный класс для описания шага (вопроса и вариантов ответа)
class QuizStep {
  QuizStep({required this.question, required this.options, required this.subqQuestion});
  final String question;
  final String subqQuestion;

  final List<String> options;
}

// Данные для квиза
final List<QuizStep> quizData = [
  QuizStep(
    question: 'С чем вам помочь?',
    subqQuestion: "Настроим поиск для вашего удобства",
    options: ['Найти помещение', 'Сдать помещение', 'Я просто посмотреть'], // 3 варианта
  ),
  QuizStep(
    question: 'На какой срок аренды вы рассчитываете?',
    subqQuestion: "Вы можете это сделать позже",
    options: ['Разместить объявление', 'Пропустить'], // 2 варианта
  ),
  QuizStep(
    question: 'Квиз завершен!',
    subqQuestion: "Можете приступать к поиску.",
    options: ['Начать'], // Финальный шаг
  ),
];

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int _currentStepIndex = 0;

  // Метод для перехода к следующему вопросу
  void _nextQuestion(String selectedOption) {
    print('Выбранный ответ: $selectedOption');

    if (_currentStepIndex < quizData.length - 1) {
      // Использование setState вызывает перерисовку и активирует AnimatedSwitcher
      setState(() {
        _currentStepIndex++;
      });
    } else {
      // Квиз завершен, можно переходить на главный экран
      print('Квиз завершен, переход на следующий экран.');
      // context.router.push(const HomeRoute());
    }
  }

  // Вспомогательный метод для построения списка кнопок для текущего шага
  List<Widget> _buildOptionsList(BuildContext context, QuizStep step) {
    return step.options
        .map(
          (option) => PButton.withOpacity(
            // Привязываем функцию перехода к нажатию
            onPressed: () => _nextQuestion(option),
            titleText: Text(option, style: context.textStyle.activesButton.copyWith(color: context.colors.orange)),
            backgroundColor: context.colors.orange40,
          ),
        )
        .toList()
        // Разделитель между кнопками
        .separated(const SizedBox(height: S.p12));
  }

  @override
  Widget build(BuildContext context) {
    // Динамически получаем данные для текущего шага
    final currentStep = quizData[_currentStepIndex];

    return Scaffold(
      body: Background(
        // Используем Center для центрирования белого блока
        child: Center(
          child: Padding(
            padding: const P(horizontal: S.p12, vertical: S.p24),
            child: DecoratedBox(
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(S.p32)),
              child: Padding(
                padding: const P(horizontal: S.p12, vertical: S.p24),
                // *** КЛЮЧЕВОЙ ЭЛЕМЕНТ: AnimatedSwitcher ***
                child: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 500),
                  // Анимация: SlideTransition для перехода справа налево
                  transitionBuilder: (child, animation) {
                    // Используем CurvedAnimation для более плавной анимации
                    final offsetAnimation = Tween<Offset>(
                      begin: const Offset(1.0, 0.0), // Начинаем справа
                      end: Offset.zero, // Заканчиваем в центре
                    ).animate(CurvedAnimation(parent: animation, curve: Curves.easeOutCubic));

                    final fadeAnimation = Tween<double>(
                      begin: 0.0,
                      end: 1.0,
                    ).animate(CurvedAnimation(parent: animation, curve: Curves.easeInCubic));

                    return SlideTransition(
                      position: offsetAnimation,
                      child: FadeTransition(opacity: fadeAnimation, child: child),
                    );
                  },
                  // KEY: Смена ключа при смене индекса запускает анимацию
                  child: AnimatedSize(
                    // *** НОВЫЙ ВИДЖЕТ: AnimatedSize ***
                    duration: const Duration(milliseconds: 500), // Длительность анимации
                    curve: Curves.easeOutCubic, // Кривая анимации
                    child: Column(
                      key: ValueKey(_currentStepIndex), // Key для AnimatedSwitcher и AnimatedSize
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch, // Растягиваем текст и кнопки
                      children: [
                        // 1. Вопросы и подвопросы
                        Padding(
                          padding: const P(vertical: S.p12),
                          child: Column(
                            children: [
                              Text(
                                currentStep.question,
                                style: context.textStyle.headline0,
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(height: S.p16),
                              Text(
                                currentStep.subqQuestion,
                                style: context.textStyle.headline2.copyWith(color: context.colors.text700),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: S.p16),

                        // 2. Список анимированных кнопок
                        ..._buildOptionsList(context, currentStep),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
