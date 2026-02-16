import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import 'package:roomate/presentation/presentation.dart';
import 'package:roomate/presentation/widgets/widgets.dart';

@RoutePage()
class ProfileDataEditScreen extends StatefulWidget {
  const ProfileDataEditScreen({super.key});

  @override
  State<ProfileDataEditScreen> createState() => _ProfileDataEditScreenState();
}

class _ProfileDataEditScreenState extends State<ProfileDataEditScreen> {
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
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            AB(
              title: Text(
                context.l10n.updateData,
                style: context.typography.headline1.copyWith(
                  fontWeight: FontWeight.w500,
                ),
              ),
              centerTitle: false,
            ),
            SliverPadding(
              padding: const P(vertical: S.p24),
              sliver: SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: P(horizontal: S.p12, vertical: S.p4),
                      child: CircleAvatar(radius: S.p50),
                    ),
                    const SizedBox(height: S.p12),
                    Text(
                      context.l10n.editPhoto,
                      style: context.typography.bodyDescription.copyWith(
                        color: context.colors.orange100,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverPadding(
              padding: const P(horizontal: S.p16),
              sliver: SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const P(horizontal: S.p8, vertical: S.p12),
                      child: Text(
                        context.l10n.whatUname,
                        style: context.typography.bodyDescription.copyWith(
                          color: context.colors.text400,
                        ),
                      ),
                    ),
                    InputWidget(controller: _nameController),
                    const SizedBox(height: S.p12),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const P(
                                    horizontal: S.p8,
                                    vertical: S.p12,
                                  ),
                                  child: Text(
                                    context.l10n.age,
                                    style: context.typography.bodyDescription
                                        .copyWith(
                                          color: context.colors.text400,
                                        ),
                                  ),
                                ),
                                InputWidget(controller: _ageController),
                              ],
                            ),
                          ),
                          const SizedBox(width: S.p12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const P(
                                    horizontal: S.p8,
                                    vertical: S.p12,
                                  ),
                                  child: Text(
                                    context.l10n.gender,
                                    style: context.typography.bodyDescription
                                        .copyWith(
                                          color: context.colors.text400,
                                        ),
                                  ),
                                ),
                                InputWidget(controller: _genderController),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    PrimaryButton(
                      title: Text(context.l10n.save),
                      onPressed: () {},
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
