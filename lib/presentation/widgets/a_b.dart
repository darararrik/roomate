import 'package:flutter/material.dart';

import 'package:roomate/presentation/constants/spacing.dart';
import 'package:roomate/presentation/widgets/b_b.dart';

class AB extends StatelessWidget {
  const AB({
    super.key,
    required this.title,
    this.actionsPadding,
    this.backgroundColor,
    this.actions,
    this.centerTitle = true,
    this.canPop = true,
  });
  final Widget title;
  final EdgeInsets? actionsPadding;
  final Color? backgroundColor;
  final List<Widget>? actions;
  final bool centerTitle;
  final bool canPop;
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      automaticallyImplyLeading: false,
      actions: actions,
      centerTitle: centerTitle,
      actionsPadding: actionsPadding,
      backgroundColor: backgroundColor,
      leading: canPop ? const BB() : null,
      title: title,
    );
  }
}
