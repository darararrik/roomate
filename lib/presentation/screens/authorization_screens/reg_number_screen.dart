import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:auto_route/auto_route.dart';

import 'package:roomate/presentation/constants/constants.dart';
import 'package:roomate/presentation/routing/app_routing.gr.dart';
import 'package:roomate/presentation/utils/utils.dart';
import 'package:roomate/presentation/widgets/primary_btn.dart';

//TODO: make it hook
@RoutePage()
class RegNumberScreen extends StatefulWidget {
  const RegNumberScreen({super.key});

  @override
  State<RegNumberScreen> createState() => _RegNumberScreenState();
}

class _RegNumberScreenState extends State<RegNumberScreen> {
  late TextEditingController _controller;
  ValueNotifier<bool> isComplete = ValueNotifier<bool>(false);
  @override
  void initState() {
    _controller = TextEditingController();
    _controller.addListener(_validate);
    super.initState();
  }

  @override
  void dispose() {
    _controller.removeListener(_validate);
    _controller.dispose();
    super.dispose();
  }

  void _validate() {
    isComplete.value = AppValidators.phone(_controller.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          physics: const ClampingScrollPhysics(),
          slivers: [
            SliverAppBar(
              centerTitle: false,
              title: Text(context.l10n.register),
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Padding(
                padding: const P(horizontal: S.p16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: S.p28),
                    Text(
                      context.l10n.enterYourPhoneNumber,
                      style: context.typography.headline0.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    const SizedBox(height: S.p8),
                    Text(
                      context.l10n.descriptionSMSCode,
                      style: context.typography.headline2.copyWith(
                        color: context.colors.text400,
                      ),
                    ),
                    const SizedBox(height: S.p32),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        DecoratedBox(
                          decoration: BoxDecoration(
                            color: context.colors.input200,
                            borderRadius: BorderRadius.circular(S.p16),
                            border: Border.all(color: context.colors.stroke300),
                          ),
                          child: Padding(
                            padding: const P(
                              horizontal: S.p12,
                              vertical: S.p14,
                            ),
                            child: Row(
                              children: [
                                Image.asset(AppIcons.ruFlag, width: S.p20),
                                const SizedBox(width: S.p8),
                                Text(
                                  context.l10n.ru_number,
                                  style: context.typography.inputTextRegular
                                      .copyWith(
                                        fontWeight: FontWeight.bold,
                                        fontSize: S.p18,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: S.p12),

                        Expanded(
                          child: TextFormField(
                            controller: _controller,
                            autofocus: true,
                            keyboardType: TextInputType.phone,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                              RuPhoneFormatter(),
                            ],
                            style: context.typography.inputTextRegular.copyWith(
                              fontWeight: FontWeight.w600,
                              fontSize: S.p18,
                              letterSpacing: 1.2,
                            ),
                            decoration: InputDecoration(
                              hintText: context.l10n.phone_placeholder,
                              hintStyle: context.typography.inputTextRegular
                                  .copyWith(
                                    color: context.colors.text400,
                                    fontSize: S.p18,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    ValueListenableBuilder(
                      valueListenable: isComplete,
                      builder: (context, value, child) {
                        return PrimaryButton(
                          onPressed: value
                              ? () => context.router.push(const SmsCodeRoute())
                              : null,
                          titleText: Text(context.l10n.next),
                        );
                      },
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
