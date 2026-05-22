import 'package:auto_route/auto_route.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';

import 'package:roomate/app/my_advertisements/widgets/my_ads_tab_content.dart';

@RoutePage()
class ArchivedMyAdvertisementsScreen extends StatelessWidget {
  const ArchivedMyAdvertisementsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MyAdsTabContent(statuses: [MyAdStatus.archived]);
  }
}
