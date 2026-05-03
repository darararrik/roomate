import 'package:flutter/material.dart';
import 'package:roomate/lib.dart';

class MoreActionBottomSheet extends StatelessWidget {
  const MoreActionBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseBottomSheet(
      title: "Действия",
      child: Padding(
        padding: const P(horizontal: S.p24),
        child: Column(
          spacing: S.p12,
          children: [
            ListItem(title: "Отправить в архив", onTap: () {}, iconPath: AppIcons.archive),
            ListItem(title: "Удалить объявление", onTap: () {}, iconPath: AppIcons.trash),
          ],
        ),
      ),
    );
  }
}
