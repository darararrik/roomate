import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:roomate/lib.dart';
import 'package:roomate/routing/app_routing.gr.dart';

@RoutePage()
class CreateScreen extends StatelessWidget {
  const CreateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(context.l10n.postAd)),
      body: SafeArea(
        child: Padding(
          padding: const P(all: S.p16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              PrimaryButton(
                text: context.l10n.postAd,
                onPressed: () => context.router.push(const CreateAdRoute()),
              ),
              const SizedBox(height: S.p12),
              PrimaryButton(
                text: context.l10n.createGroupTitle,
                onPressed: () => context.router.push(const CreateGroupRoute()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
