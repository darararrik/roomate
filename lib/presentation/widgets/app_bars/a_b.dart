import 'package:flutter/material.dart';

import 'package:roomate/presentation/widgets/buttons/b_b.dart';

class AB extends StatelessWidget {
  const AB({
    super.key,
    required this.title,
    this.actionsPadding,
    this.backgroundColor,
    this.actions,
    this.centerTitle = true,
    this.canPop = true,
    this.onBackButtonPressed,
    this.pinned = false,
  });
  final Widget title;
  final EdgeInsets? actionsPadding;
  final Color? backgroundColor;
  final List<Widget>? actions;
  final bool centerTitle;
  final bool canPop;
  final VoidCallback? onBackButtonPressed;
  final bool pinned;
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: pinned,
      automaticallyImplyLeading: false,
      actions: actions,
      centerTitle: centerTitle,
      actionsPadding: actionsPadding,
      backgroundColor: backgroundColor,
      leading: canPop ? BB(onPressed: onBackButtonPressed) : null,
      title: title,
    );
  }
}
