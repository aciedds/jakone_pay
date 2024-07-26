import 'package:flutter/material.dart';

class EventCarouselItem extends StatelessWidget {
  final String imagePath;

  const EventCarouselItem({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.deepOrange.withOpacity(0.5),
            Colors.deepOrangeAccent.withOpacity(0.5),
            Colors.white,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildImageWithBorder(),
          const SizedBox(height: 16),
          _buildMoreInfoButton(),
        ],
      ),
    );
  }

  Widget _buildImageWithBorder() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: Colors.white,
          width: 2,
        ),
      ),
      child: Image.asset(
        imagePath,
        fit: BoxFit.cover,
      ),
    );
  }
}

Widget _buildMoreInfoButton() {
  return Container(
    padding: const EdgeInsets.all(5),
    decoration: BoxDecoration(
      gradient: const LinearGradient(
        colors: [
          Colors.deepOrangeAccent,
          Colors.yellow,
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ),
      borderRadius: BorderRadius.circular(50),
      border: Border.all(
        color: Colors.yellow,
        width: 2,
      ),
    ),
    child: const Text(
      "More Information",
      style: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
  );
}
