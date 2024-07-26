import 'package:flutter/material.dart';

class BalanceCard extends StatelessWidget {
  final String balance;
  final String currency;
  final Widget trailingWidget;

  const BalanceCard({
    super.key,
    required this.balance,
    required this.currency,
    required this.trailingWidget,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero, // Remove default Card margin
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        children: [
          _buildSideBorder(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: _buildBalanceSection(),
                  ),
                  trailingWidget,
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSideBorder() {
    return Container(
      constraints: const BoxConstraints(
        maxHeight: 82,
        maxWidth: 15,
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
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(8),
          bottomLeft: Radius.circular(8),
        ),
      ),
    );
  }

  Widget _buildBalanceSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Balance"),
        RichText(
          text: TextSpan(
            text: "$currency. ",
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
            children: [
              TextSpan(
                text: balance,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        const Text(
          "-",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
