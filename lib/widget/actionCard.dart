import 'package:flutter/material.dart';

class ActionCard extends StatelessWidget {
  final String title;
  final String imagePath;
  final VoidCallback onTap;

  const ActionCard({
    super.key,
    required this.title,
    required this.imagePath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,  // Handles the tap event
      child: Column(
        children: [
          Container(
            height: 70,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              //color: Theme.of(context).colorScheme.primaryContainer, // Optional color
            ),
            child: Center(
              child: Image.asset(
                imagePath,
                height: 50,
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
