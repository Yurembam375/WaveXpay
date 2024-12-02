import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Viewallbutton extends StatelessWidget {
  final VoidCallback? onpress; // Define the type explicitly for clarity

  const Viewallbutton({super.key, this.onpress});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onpress, // Directly pass the callback
      child: Text(
        "View All",
        style: TextStyle(
          color: HexColor("#05099F"),
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
