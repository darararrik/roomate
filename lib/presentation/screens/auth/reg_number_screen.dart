import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';

import 'package:auto_route/auto_route.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

import 'package:roomate/presentation/constants/constants.dart';
import 'package:roomate/presentation/routing/app_routing.gr.dart';
import 'package:roomate/presentation/utils/utils.dart';
import 'package:roomate/presentation/widgets/widgets.dart';

@RoutePage()
class RegNumberScreen extends StatefulWidget {
  const RegNumberScreen({super.key});

  @override
  State<RegNumberScreen> createState() => _RegNumberScreenState();
}

class _RegNumberScreenState extends State<RegNumberScreen> {
  late TextEditingController _controller;
  //TODO: УБрать мок данные
  final List<String> _countryCodes = ['+7', '+1', '+44', '+49', '+33', '+86', '+91'];
  final String _selectedCountryCode = '+7';

  @override
  void initState() {
    _controller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          AB(title: Text(context.l10n.register), centerTitle: false),
          SliverFillRemaining(
            child: Padding(
              padding: const P(horizontal: S.p16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const P(vertical: S.p28),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(context.l10n.enterYourPhoneNumber, style: context.textStyle.headline1),
                        const SizedBox(height: S.p8),
                        Text(
                          context.l10n.descriptionSMSCode1,
                          style: context.textStyle.headline2.copyWith(color: context.colors.text400),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: S.p10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CountryCodeDropdown(
                        countryCodes: _countryCodes,
                        selectedCode: _selectedCountryCode,
                        onChanged: (value) {},
                      ),
                      const SizedBox(width: S.p12),

                      Expanded(
                        child: InputWidget(
                          hintText: context.l10n.enterPhoneNumber,
                          controller: _controller,
                          keyboardType: TextInputType.phone,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  PrimaryButton.botPadding(
                    titleText: Text(context.l10n.next),
                    onPressed: () => context.router.push(const SmsCodeRoute()),
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
