import 'package:flutter/material.dart';

import 'package:roomate/constants/spacing.dart';
import 'package:roomate/utils/utils.dart';
import 'package:roomate/widgets/buttons/secondary_button.dart';
import 'package:roomate/widgets/sheets/base_bottom_sheet.dart';

class AddMediaSheet extends StatelessWidget {
  const AddMediaSheet({super.key, required this.isPhoto});
  final bool isPhoto;
  @override
  Widget build(BuildContext context) {
    return BaseBottomSheet(
      title: isPhoto ? context.l10n.addPhoto : context.l10n.addVideo,
      child: Padding(
        padding: const P(horizontal: S.p24),
        child: Column(
          children: [
            SecondaryButton(
              text: isPhoto
                  ? context.l10n.createPhoto
                  : context.l10n.recordVideo,
              onPressed: () {},
            ),
            const SizedBox(height: S.p12),
            SecondaryButton(
              text: isPhoto
                  ? context.l10n.chooseFromGallery
                  : context.l10n.chooseFromGallery,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
