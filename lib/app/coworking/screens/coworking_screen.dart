import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:roomate/lib.dart';

@RoutePage()
class CoworkingScreen extends StatelessWidget {
  const CoworkingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //TODO: Реализовать после MVP
      body: Center(
        child: Text(
          "MVP+ - Коворкинг",
          style: context.typography.bodyDescription.copyWith(color: context.colors.graysText400),
        ),
      ),
    );
  }
}
