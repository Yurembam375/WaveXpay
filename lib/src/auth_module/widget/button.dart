import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onTap;
  final String label;

  const CustomButton({super.key, required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: 15.w), // Use ScreenUtil for padding
      child: SizedBox(
        height: 50.h, // Use ScreenUtil to scale button height
        width: double.infinity,
        child: ElevatedButton(
          onPressed: onTap,
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(
              HexColor("#05099F"),
            ),
          ),
          child: Text(
            label,
            style: TextStyle(
                fontSize: 20.sp,
                color: Colors.white), // Use ScreenUtil for font size
          ),
        ),
      ),
    );
  }
}
