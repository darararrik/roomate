import 'package:flutter/material.dart';

import 'package:auto_route/annotations.dart';

import 'package:roomate/presentation/presentation.dart';
import 'package:roomate/presentation/widgets/avatar.dart';
import 'package:roomate/presentation/widgets/input_widget.dart';

@RoutePage()
class AuthEditFirstPage extends StatefulWidget {
  const AuthEditFirstPage({super.key});

  @override
  State<AuthEditFirstPage> createState() => _AuthEditFirstPageState();
}

class _AuthEditFirstPageState extends State<AuthEditFirstPage> {
  late TextEditingController _nameController;
  late TextEditingController _ageController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _ageController = TextEditingController();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _ageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Avatar(),
        Padding(
          padding: const P(vertical: S.p28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(context.l10n.whatUname, style: context.textStyle.headline1),
              const SizedBox(height: S.p8),
              Text(
                context.l10n.whatURealName,
                style: context.textStyle.headline2.copyWith(color: context.colors.text400),
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InputWidget(hintText: context.l10n.name, controller: _nameController),
              const SizedBox(height: S.p12),
              Row(
                children: [
                  Expanded(
                    child: InputWidget(hintText: context.l10n.age, controller: _ageController),
                  ),
                  const SizedBox(width: S.p12),
                  //TODO: Заменить на дропдаун
                  Expanded(
                    child: InputWidget(hintText: context.l10n.gender, controller: _ageController),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
