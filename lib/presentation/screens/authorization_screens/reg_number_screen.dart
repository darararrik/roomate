import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:roomate/presentation/constants/constants.dart';
import 'package:roomate/presentation/routing/app_routing.gr.dart';
import 'package:roomate/presentation/utils/utils.dart';
import 'package:roomate/presentation/widgets/widgets.dart';

@RoutePage()
class RegNumberScreen extends HookWidget {
  const RegNumberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();
    final isComplete = useState(false);

    useEffect(() {
      void listener() {
        isComplete.value = AppValidators.phone(controller.text);
      }

      controller.addListener(listener);
      return () => controller.removeListener(listener);
    }, [controller]);
    return Scaffold(
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const P(horizontal: S.p16),
          child: PrimaryButton(
            onPressed: isComplete.value
                ? () => context.router.push(const SmsCodeRoute())
                : null,
            text: context.l10n.next,
          ),
        ),
      ),
      body: CustomScrollView(
        physics: const ClampingScrollPhysics(),
        slivers: [
          SliverAppBar(centerTitle: false, title: Text(context.l10n.register)),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: const P(horizontal: S.p16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const P(vertical: S.p28),
                    child: Column(
                      children: [
                        Text(
                          context.l10n.enterYourPhoneNumber,
                          style: context.typography.headline0.copyWith(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: S.p8),
                        Text(
                          context.l10n.descriptionSMSCode,
                          style: context.typography.headline2.copyWith(
                            color: context.colors.graysText400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      DecoratedBox(
                        decoration: BoxDecoration(
                          color: context.colors.graysInput200,
                          borderRadius: BorderRadius.circular(S.p16),
                          border: Border.all(
                            color: context.colors.graysStroke300,
                          ),
                        ),
                        child: Padding(
                          padding: const P(horizontal: S.p12, vertical: S.p20),
                          child: Row(
                            mainAxisAlignment: .center,
                            children: [
                              Image.asset(AppIcons.ruFlag, width: S.p24),
                              const SizedBox(width: S.p8),
                              Text(
                                context.l10n.russiaPhonePrefix,
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
                        child: InputWidget(
                          autofocus: true,
                          controller: controller,
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
                            hintText: context.l10n.phonePlaceholder,
                            hintStyle: context
                                .appTheme
                                .inputDecorationTheme
                                .hintStyle
                                ?.copyWith(fontSize: S.p18),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
