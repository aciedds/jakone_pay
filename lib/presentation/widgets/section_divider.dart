import 'package:flutter/material.dart';

class SectionDivider extends StatelessWidget {
  final String imageIcon;
  final String title;
  final String desc;
  final Widget trailingWidget;

  const SectionDivider({
    super.key,
    required this.imageIcon,
    required this.title,
    required this.desc,
    required this.trailingWidget,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Row(
          children: [
            _buildIconWithGradient(),
            const SizedBox(width: 10),
            _buildTextContent(),
            trailingWidget,
          ],
        ),
      ),
    );
  }

  Widget _buildIconWithGradient() {
    return Container(
      constraints: const BoxConstraints(
        maxWidth: 36,
        maxHeight: 36,
      ),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Colors.deepOrange,
            Colors.orange,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: const BorderRadius.horizontal(
          right: Radius.circular(50),
        ),
        border: Border.all(
          color: Colors.yellow,
          width: 2,
        ),
      ),
      child: Image.asset(
        imageIcon,
        fit: BoxFit.fill,
      ),
    );
  }

  Widget _buildTextContent() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
          Text(desc),
          Container(
            constraints: const BoxConstraints(
              maxHeight: 2,
              maxWidth: 37,
            ),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.deepOrange,
                  Colors.orange,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          )
        ],
      ),
    );
  }
}
