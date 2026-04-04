import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Positioned.fill(
          child: DecoratedBox(
            decoration: BoxDecoration(
              gradient: RadialGradient(
                radius: 0.9,
                center: Alignment(1, -0.1),
                colors: [
                  Color(0xFFFFBA6C), // тёплый оранжевый
                  Color(0xFFED1B00), // насыщенный красно-оранжевый
                ],
              ),
            ),
          ),
        ),

        const Positioned.fill(
          child: DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Color.fromRGBO(0, 0, 0, 0.8), // затемнение внизу
                ],
                stops: [0.6, 0.9],
              ),
            ),
          ),
        ),
        const Positioned.fill(
          child: DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.center,
                end: Alignment.topCenter,
                colors: [
                  Colors.transparent,
                  Color.fromRGBO(0, 0, 0, 0.24), // затемнение внизу
                ],
                stops: [0.6, 0.9],
              ),
            ),
          ),
        ),
        child,
      ],
    );
  }
}
