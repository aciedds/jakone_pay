import 'package:flutter/material.dart';

class CircleGradientButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;
  final double size;
  final BoxBorder boxBorder;
  final Gradient gradient;

  const CircleGradientButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.size = 50.0,
    this.boxBorder = const Border.fromBorderSide(BorderSide(
      width: 2.0,
      color: Colors.yellow,
    )),
    this.gradient = const LinearGradient(
      colors: [
        Colors.deepOrange,
        Colors.orange,
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: boxBorder,
          gradient: gradient,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ]),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          shape: const CircleBorder(),
          padding: EdgeInsets.zero,
        ),
        onPressed: onPressed,
        child: child,
      ),
    );
  }
}
