import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:roomate/presentation/presentation.dart';
import 'package:roomate/presentation/widgets/widgets.dart';

@RoutePage(name: "ProfileEditRoute")
class EditScreen extends StatefulWidget {
  const EditScreen({super.key});

  @override
  State<EditScreen> createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  late final TextEditingController _nameController;
  late final TextEditingController _ageController;

  late final TextEditingController _genderController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _ageController = TextEditingController();
    _genderController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          AB(
            title: Text(
              context.l10n.updateData,
              style: context.textStyle.headline1.copyWith(fontWeight: FontWeight.w500),
            ),
            centerTitle: false,
          ),
          SliverPadding(
            padding: const P(vertical: S.p24),
            sliver: SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: .center,
                mainAxisAlignment: .center,
                children: [
                  const Padding(
                    padding: .symmetric(horizontal: S.p12, vertical: S.p4),
                    child: CircleAvatar(radius: S.p50),
                  ),
                  const SizedBox(height: S.p12),
                  Text(
                    context.l10n.editPhoto,
                    style: context.textStyle.bodyDescription.copyWith(color: context.colors.orange100),
                  ),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: const P(horizontal: S.p16),
            sliver: SliverFillRemaining(
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  Padding(
                    padding: const P(horizontal: S.p8, vertical: S.p12),
                    child: Text(
                      context.l10n.whatUname,
                      style: context.textStyle.bodyDescription.copyWith(color: context.colors.text400),
                    ),
                  ),
                  InputWidget(controller: _nameController),
                  const SizedBox(height: S.p12),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: .start,
                            children: [
                              Padding(
                                padding: const P(horizontal: S.p8, vertical: S.p12),
                                child: Text(
                                  context.l10n.age,
                                  style: context.textStyle.bodyDescription.copyWith(color: context.colors.text400),
                                ),
                              ),
                              InputWidget(controller: _ageController),
                            ],
                          ),
                        ),
                        const SizedBox(width: S.p12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: .start,
                            children: [
                              Padding(
                                padding: const P(horizontal: S.p8, vertical: S.p12),
                                child: Text(
                                  context.l10n.gender,
                                  style: context.textStyle.bodyDescription.copyWith(color: context.colors.text400),
                                ),
                              ),
                              InputWidget(controller: _genderController),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  PrimaryButton(titleText: Text(context.l10n.save), onPressed: () {}),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
