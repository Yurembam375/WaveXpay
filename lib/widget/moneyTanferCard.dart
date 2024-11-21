import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class MoneyTransferCard extends StatelessWidget {
  final String title;
  final String imagePath;
  final VoidCallback onTap;

  const MoneyTransferCard({
    super.key,
    required this.title,
    required this.imagePath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: HexColor("#05099F"), // Default color
            ),
            child: Center(
              child: Image.asset(
                imagePath,
                height: 40,
                width: 40,
              ),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
