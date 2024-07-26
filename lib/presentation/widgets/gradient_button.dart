import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  final double radius;
  final Gradient gradient;
  final BorderSide border;
  final Widget child;
  final VoidCallback onTap;
  final EdgeInsets _padding;
  final Size? maximumSize;

  const GradientButton({
    super.key,
    required this.child,
    required this.onTap,
    required this.radius,
    required this.gradient,
    this.border = BorderSide.none,
    EdgeInsets? padding,
    this.maximumSize,
  }) : _padding = padding ??
            const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            );

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: _padding,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          gradient: gradient,
        ),
        child: Center(child: child),
      ),
    );
  }
}
