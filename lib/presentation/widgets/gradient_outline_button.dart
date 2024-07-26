import 'package:flutter/material.dart';
import 'package:jakone_pay/presentation/painter/gradient_painter.dart';

class GradientOutlineButton extends StatelessWidget {
  final double strokeWidth;
  final double radius;
  final Gradient outlineGradient;
  final Widget child;
  final VoidCallback onTap;

  const GradientOutlineButton({
    super.key,
    required this.child,
    required this.onTap,
    required this.strokeWidth,
    required this.radius,
    required this.outlineGradient,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: GradientPainter(
        strokeWidth: strokeWidth,
        radius: radius,
        gradient: outlineGradient,
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(radius),
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Center(child: child),
        ),
      ),
    );
  }
}
