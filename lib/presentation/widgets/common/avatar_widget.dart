import 'package:flutter/material.dart';

import 'package:roomate/presentation/constants/constants.dart';
import 'package:roomate/presentation/utils/utils.dart';
import 'package:roomate/presentation/widgets/buttons/icon_button_widget.dart';

class AvatarWidget extends StatelessWidget {
  const AvatarWidget({super.key, this.onEditPressed, this.image});
  final VoidCallback? onEditPressed;
  final ImageProvider? image;
  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: S.p128,
      child: Stack(
        children: [
          Align(
            alignment: .center,
            child: CircleAvatar(radius: S.p60, backgroundImage: image),
          ),
          Align(
            alignment: .bottomRight,
            child: IconButtonWidget(
              onPressed: onEditPressed,
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
