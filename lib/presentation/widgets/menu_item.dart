import 'package:flutter/material.dart';
import 'package:jakone_pay/presentation/painter/gradient_painter.dart';

class MenuItem extends StatelessWidget {
  final Gradient outlineGradient;
  final double radius;
  final double strokeWidth;
  final String assetsImage;
  final String title;
  final double size;
  final VoidCallback onTap;

  MenuItem({
    super.key,
    required this.size,
    required this.onTap,
    required this.assetsImage,
    required this.title,
    required this.outlineGradient,
    required this.radius,
    required this.strokeWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Card(
          child: CustomPaint(
            painter: GradientPainter(
              strokeWidth: strokeWidth,
              radius: radius,
              gradient: outlineGradient,
            ),
            child: InkWell(
              borderRadius: BorderRadius.circular(radius),
              onTap: onTap,
              child: Container(
                width: size,
                height: size,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(radius),
                  gradient: LinearGradient(
                    colors: [
                      Colors.deepOrange.withOpacity(0.3),
                      Colors.yellow.withOpacity(0.1),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Image.asset(
                  assetsImage,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 10),
        Text(
          title,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 10,
          ),
        ),
      ],
    );
  }
}
