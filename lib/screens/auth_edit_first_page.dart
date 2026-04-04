import 'package:flutter/material.dart';

import 'package:auto_route/annotations.dart';

import 'package:roomate/lib.dart';

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
              Text(
                context.l10n.whatsYourName,
                style: context.typography.headline1,
              ),
              const SizedBox(height: S.p8),
              Text(
                context.l10n.betterToUseRealName,
                style: context.typography.headline2.copyWith(
                  color: context.colors.graysText400,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InputWidget(
                hintText: context.l10n.name,
                controller: _nameController,
              ),
              const SizedBox(height: S.p12),
              Row(
                children: [
                  Expanded(
                    child: InputWidget(
                      hintText: context.l10n.age,
                      controller: _ageController,
                    ),
                  ),
                  const SizedBox(width: S.p12),
                  //TODO: Заменить на дропдаун
                  Expanded(
                    child: InputWidget(
                      hintText: context.l10n.gender,
                      controller: _ageController,
                    ),
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
