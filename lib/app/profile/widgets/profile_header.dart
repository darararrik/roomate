import 'package:flutter/material.dart';

import 'package:domain/domain.dart';

import 'package:roomate/lib.dart';

class OverviewProfileHeader extends StatelessWidget {
  const OverviewProfileHeader({super.key, required this.profile});

  final ProfileModel profile;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const P(vertical: S.p24),
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
            '${profile.firstName} ${profile.lastName}',
            style: context.typography.bodyTitle,
          ),
          const SizedBox(height: S.p8),
          Text(
            profile.phone,
            style: context.typography.bodyDescription.copyWith(
              color: context.colors.graysText400,
            ),
          ),
        ],
      ),
    );
  }
}
