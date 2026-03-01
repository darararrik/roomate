import 'package:flutter/material.dart';

import 'package:roomate/presentation/presentation.dart';
import 'package:roomate/presentation/widgets/common/common.dart';

class Avatar extends StatelessWidget {
  const Avatar({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return GestureDetector(
          // onTap: () => showCupertinoModalPopup(
          //   context: context,
          //   builder: (BuildContext builder) => AvatarPickDialog(
          //     onFilePicked: (image) {
          //       context.read<EditDataBloc>().add(EditDataEvent.edit(imageAvatar: image));
          //     },
          //   ),
          // ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              const CircleAvatar(radius: S.p60),
              Positioned(
                right: constraints.maxWidth * S.p0_3,
                bottom: S.p0,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: context.colors.graysLight100,
                    borderRadius: BorderRadius.circular(S.p12),
                  ),
                  child: Padding(
                    padding: const P(all: S.p6),
                    child: AppIcon(
                      AppIcons.edit3,
                      size: S.p24,
                      color: context.colors.graysIcon500,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
