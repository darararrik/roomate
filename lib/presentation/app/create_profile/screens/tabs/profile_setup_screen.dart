import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:roomate/presentation/constants/constants.dart';
import 'package:roomate/presentation/utils/utils.dart';
import 'package:roomate/presentation/widgets/buttons/icon_button_widget.dart';
import 'package:roomate/presentation/widgets/common/app_icon.dart';

@RoutePage()
class ProfileSetupScreen extends StatelessWidget {
  const ProfileSetupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const P(vertical: S.p4, horizontal: S.p12),
                  child: SizedBox.square(
                    dimension: 128,
                    child: Stack(
                      children: [
                        const Align(
                          alignment: .center,
                          child: CircleAvatar(radius: S.p60),
                        ),
                        Align(
                          alignment: .bottomRight,
                          child: IconButtonWidget(
                            onPressed: () {},
                            icon: AppIcons.edit3,
                            size: S.p36,
                            iconColor: context.colors.graysIcon500,
                            backgroundColor: context.colors.graysLight100,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: S.p12),
                Text('Сергей Иванов', style: context.typography.bodyTitle),
                const SizedBox(height: S.p8),
                Text(
                  '+7 913 123 12 34',
                  style: context.typography.bodyDescription.copyWith(
                    color: context.colors.graysText400,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
