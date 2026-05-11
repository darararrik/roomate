import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import 'package:roomate/constants/spacing.dart';
import 'package:roomate/routing/app_routing.gr.dart';
import 'package:roomate/theme/theme.dart';
import 'package:roomate/utils/utils.dart';
import 'package:roomate/widgets/buttons/bottom_button.dart';

@RoutePage()
class VerifcationSummaryScreen extends StatelessWidget {
  const VerifcationSummaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final locale = context.l10n;
    final colors = context.colors;
    final typography = context.typography;
    return Scaffold(
      bottomNavigationBar: SafeArea(
        child: BottomNextButton(
          onPressed: () => context.pushRoute(const VerificationStatusRoute()),
        ),
      ),
      body: CustomScrollView(
        physics: const NeverScrollableScrollPhysics(),
        slivers: [
          SliverAppBar(title: Text(locale.checkPassport), centerTitle: false),
          SliverPadding(
            padding: const P(horizontal: S.p16, top: S.p28),
            sliver: SliverFillRemaining(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    locale.verifyDataCorrectness,
                    style: typography.headline1,
                  ),
                  const SizedBox(height: S.p8),
                  Text(
                    locale.passportBindingInfo,
                    style: typography.headline2.copyWith(
                      color: colors.graysText400,
                    ),
                  ),
                  const SizedBox(height: S.p24),
                  Padding(
                    padding: const P(vertical: S.p4),
                    child: Text(
                      locale.checkPassport,
                      style: typography.headline2,
                    ),
                  ),
                  const SizedBox(height: S.p16),
                  Padding(
                    padding: const P(right: S.p36),
                    child: Column(
                      spacing: S.p8,
                      children: [
                        _rowData(
                          typography,
                          colors,
                          "45 10 ****11",
                          locale.passportSeriesAndNumber,
                        ),
                        _rowData(
                          typography,
                          colors,
                          "01.01.2025",
                          locale.passportIssueDate,
                        ),
                        _rowData(
                          typography,
                          colors,
                          "111-001",
                          locale.passportDepartmentCode,
                        ),
                        _rowData(
                          typography,
                          colors,
                          "гор. Москва",
                          locale.passportBirthPlace,
                        ),
                        _rowData(
                          typography,
                          colors,
                          "01.01.1990",
                          locale.passportBirthDate,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Column _rowData(
    AppTypography typography,
    AppPalette colors,
    String? value,
    String title,
  ) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: typography.headline2.copyWith(color: colors.graysText400),
        ),
        const SizedBox(height: S.p8),
        Text(value ?? "------", style: typography.bodyDescription),
        const SizedBox(height: S.p12),
        const Divider(),
      ],
    );
  }
}
