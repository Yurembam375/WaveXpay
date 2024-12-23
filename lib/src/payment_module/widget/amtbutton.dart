import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

class Amtbutton extends StatelessWidget {
  final String amount;
  final VoidCallback onTap;
  const Amtbutton({super.key, required this.amount, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 34.h,
        width: 95.w,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(10)),
        child: Center(
            child: Text(
          "₹$amount",
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: HexColor("#05099F")),
        )),
      ),
    );
  }
}
