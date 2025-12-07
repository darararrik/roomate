import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:roomate/presentation/presentation.dart';
import 'package:roomate/presentation/widgets/a_b.dart';

@RoutePage()
class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  // 1. Добавляем ScrollController для управления скроллом CustomScrollView
  final ScrollController _scrollController = ScrollController();

  // Пример данных
  final List<_MessageItem> _messages = List.generate(20, (i) {
    final now = DateTime.now().subtract(Duration(days: 20 - i));
    final isMine = i % 3 == 0;
    return _MessageItem(
      id: i.toString(),
      text: isMine
          ? 'Сообщение от меня №$i — короткое/длинное тестирование текста'
          : 'Ответ пользователя №$i — lorem ipsum dolor sit amet...',
      dateTime: now,
      isMine: isMine,
      authorName: isMine ? 'Я' : 'Пользователь ${i % 5}',
    );
  });

  bool get _canSend => _controller.text.trim().isNotEmpty;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() => setState(() {}));
    // 2. Инициализация (контроллер уже инициализирован, но здесь можно было бы добавить слушатели, если нужно)
    // Также можно вызвать _scrollToBottom() здесь, если нужно начать с конца списка при загрузке.
    // _scrollToBottom(); // Раскомментируйте, если нужно прокрутить к последнему сообщению при старте
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    // 3. Освобождаем ScrollController
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollToBottom() {
    // 4. Функция для прокрутки к концу списка.
    // Используем addPostFrameCallback, чтобы убедиться, что список уже перерисован
    // и новое сообщение учтено в maxScrollExtent.
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  void _onAttach() {
    debugPrint('Attach pressed');
  }

  void _onSend() {
    final text = _controller.text.trim();
    if (text.isEmpty) return;
    final msg = _MessageItem(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      text: text,
      dateTime: DateTime.now(),
      isMine: true,
      authorName: 'Я',
    );
    setState(() {
      _messages.add(msg);
      _controller.clear();
    });
    // 5. Вызываем прокрутку после добавления сообщения
    _scrollToBottom();
    _focusNode.requestFocus();
  }

  int _activeParticipantsCount() {
    final set = <String>{};
    for (final m in _messages) {
      set.add(m.authorName);
    }
    return set.length;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.light100,
      // ВАЖНО: Это свойство поднимает body при открытии клавиатуры
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Column(
          children: [
            // 1. Скроллируемый список сообщений
            // Используем Expanded, чтобы он занимал всё свободное место
            Expanded(
              child: CustomScrollView(
                // 6. Передаем ScrollController в CustomScrollView
                controller: _scrollController,
                reverse: false, // Обычно для чатов используют true, но оставляем как у вас
                slivers: [
                  AB(
                    pinned: true,
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Название", style: context.textStyle.headline1),
                        const SizedBox(height: S.p4),
                        Text(
                          "${_activeParticipantsCount()} Участников",
                          style: context.textStyle.bodyDescription.copyWith(color: context.colors.text400),
                        ),
                      ],
                    ),
                  ),
                  SliverPadding(
                    padding: const P(horizontal: S.p16, vertical: S.p8),
                    sliver: SliverList.builder(
                      itemCount: _messages.length,
                      itemBuilder: (context, index) {
                        final item = _messages[index];
                        final prev = index > 0 ? _messages[index - 1] : null;
                        final needDate = prev == null || !isSameDate(prev.dateTime, item.dateTime);

                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            if (needDate) DateLabel(dateTime: item.dateTime),
                            if (item.isMine)
                              MyMessageBubble(text: item.text, time: timeString(item.dateTime))
                            else
                              OtherMessageBubble(
                                text: item.text,
                                time: timeString(item.dateTime),
                                authorName: item.authorName,
                              ),
                          ],
                        );
                      },
                    ),
                  ),
                  // Небольшой отступ в конце списка
                  const SliverToBoxAdapter(child: SizedBox(height: S.p12)),
                ],
              ),
            ),

            // 2. Поле ввода (Input)
            Container(
              color: context.colors.white,
              padding: const P(horizontal: S.p12, vertical: S.p8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end, // Выравнивание по низу для многострочного ввода
                children: [
                  // Attach button
                  InkWell(
                    onTap: _onAttach,
                    borderRadius: BorderRadius.circular(S.p12),
                    child: Padding(
                      padding: const P(all: S.p8),
                      child: Icon(Icons.attach_file, size: S.p20, color: context.colors.text700),
                    ),
                  ),
                  const SizedBox(width: S.p8),

                  // Input Field
                  Expanded(
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(
                        minHeight: 40,
                        maxHeight: S.p70 * 2.2, // Ограничение высоты при росте текста
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: context.colors.light100,
                          borderRadius: BorderRadius.circular(S.p12),
                          border: Border.all(color: context.colors.text400.withOpacity(0.12)),
                        ),
                        padding: const P(horizontal: S.p8, vertical: S.p4),
                        child: Row(
                          children: [
                            Expanded(
                              child: Scrollbar(
                                child: TextField(
                                  controller: _controller,
                                  focusNode: _focusNode,
                                  keyboardType: TextInputType.multiline,
                                  textInputAction: TextInputAction.newline,
                                  minLines: 1,
                                  maxLines: 5,
                                  decoration: InputDecoration(
                                    isCollapsed: true,
                                    hintText: "Введите сообщение...",
                                    border: InputBorder.none,
                                    contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 6),
                                    hintStyle: context.textStyle.bodyDescription.copyWith(
                                      color: context.colors.text400,
                                    ),
                                  ),
                                  style: context.textStyle.bodyDescription,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(width: S.p8),

                  // Send button
                  InkWell(
                    onTap: _canSend ? _onSend : null,
                    borderRadius: BorderRadius.circular(S.p12),
                    child: Container(
                      padding: const P(all: S.p8),
                      decoration: BoxDecoration(
                        color: _canSend ? context.colors.orange : context.colors.text400.withOpacity(0.16),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.send,
                        size: S.p20,
                        color: _canSend ? context.colors.white : context.colors.text400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// =========================================================================
// Вспомогательные классы и утилиты (Оставлены без изменений для полноты)
// =========================================================================

bool isSameDate(DateTime a, DateTime b) {
  return a.year == b.year && a.month == b.month && a.day == b.day;
}

String timeString(DateTime dt) {
  final h = dt.hour.toString().padLeft(2, '0');
  final m = dt.minute.toString().padLeft(2, '0');
  return '$h:$m';
}

class _MessageItem {
  _MessageItem({
    required this.id,
    required this.text,
    required this.dateTime,
    required this.isMine,
    required this.authorName,
  });
  final String id;
  final String text;
  final DateTime dateTime;
  final bool isMine;
  final String authorName;
}

class DateLabel extends StatelessWidget {
  const DateLabel({super.key, required this.dateTime});
  final DateTime dateTime;

  @override
  Widget build(BuildContext context) {
    final formatted = "${dateTime.day} ${_monthName(dateTime.month)} ${dateTime.year}";
    return Padding(
      padding: const P(vertical: S.p8),
      child: Center(
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: context.colors.white,
            borderRadius: BorderRadius.circular(S.p20),
            boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 4, offset: Offset(0, 2))],
          ),
          child: Padding(
            padding: const P(horizontal: S.p8, vertical: S.p4),
            child: Text(formatted, style: context.textStyle.activesLabel.copyWith(color: context.colors.text700)),
          ),
        ),
      ),
    );
  }

  String _monthName(int m) {
    const months = ['янв', 'фев', 'мар', 'апр', 'май', 'июн', 'июл', 'авг', 'сен', 'окт', 'ноя', 'дек'];
    return months[m - 1];
  }
}

class MyMessageBubble extends StatelessWidget {
  const MyMessageBubble({super.key, required this.text, required this.time});
  final String text;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const P(left: S.p60, right: S.p8, vertical: S.p6),
      child: Align(
        alignment: Alignment.centerRight,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: context.colors.orange,
            borderRadius: BorderRadius.circular(S.p16),
            boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 2, offset: Offset(0, 1))],
          ),
          child: Padding(
            padding: const P(horizontal: S.p12, vertical: S.p10),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Flexible(
                  child: Text(text, style: context.textStyle.bodyDescription.copyWith(color: context.colors.white)),
                ),
                const SizedBox(width: S.p8),
                Text(time, style: context.textStyle.bodySmall.copyWith(color: context.colors.white)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class OtherMessageBubble extends StatelessWidget {
  const OtherMessageBubble({super.key, required this.text, required this.time, required this.authorName});
  final String text;
  final String time;
  final String authorName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const P(right: S.p60, left: S.p8, vertical: S.p6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CircleAvatar(radius: S.p16, backgroundColor: context.colors.black, child: Text(authorName[0])),
          const SizedBox(width: S.p8),
          Expanded(
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: context.colors.white,
                borderRadius: BorderRadius.circular(S.p16),
                boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 2, offset: Offset(0, 1))],
              ),
              child: Padding(
                padding: const P(horizontal: S.p12, vertical: S.p10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Text(
                        text,
                        style: context.textStyle.bodyDescription.copyWith(color: context.colors.text700),
                      ),
                    ),
                    const SizedBox(width: S.p8),
                    Text(time, style: context.textStyle.bodySmall.copyWith(color: context.colors.text700)),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
