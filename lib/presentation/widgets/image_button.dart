import 'package:flutter/material.dart';

class ImageButton extends StatelessWidget {
  final String imageAssets;
  final VoidCallback onPressed;

  const ImageButton({
    super.key,
    required this.imageAssets,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        foregroundColor: Colors.transparent,
        splashFactory: NoSplash.splashFactory,
        shape: CircleBorder(),
        padding: EdgeInsets.zero,
      ),
      onPressed: onPressed,
      child: Image.asset(
        imageAssets,
      ),
    );
  }
}
