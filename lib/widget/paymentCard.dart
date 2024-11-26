import 'package:flutter/material.dart';


class PaymentCard extends StatelessWidget {
  final String title;
  final String imagePath;
  final VoidCallback onTap;

  const PaymentCard({
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
              borderRadius: BorderRadius.circular(20),
              color: Colors.white, // Default color
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
