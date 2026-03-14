import 'package:flutter/material.dart';
import 'package:roomate/presentation/constants/constants.dart';
import 'package:roomate/presentation/utils/utils.dart';
import 'package:roomate/presentation/widgets/buttons/icon_button_widget.dart';

class AvatarWidget extends StatelessWidget {
  const AvatarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: S.p128,
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
    );
  }
}
