import 'package:flutter/material.dart';

class LoadingState extends StatelessWidget {
  const LoadingState({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator.adaptive());
  }
}

class ErrorState extends StatelessWidget {
  const ErrorState({super.key, required this.error});
  final Object error;

  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Ошибка ${error.toString()}"));
  }
}
