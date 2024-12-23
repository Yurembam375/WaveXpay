// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

class UpiNoWidget extends StatelessWidget {
  const UpiNoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'UPI NUMBER Content',
        style: TextStyle(
          fontSize: 16.sp,
          color: HexColor("#05099F"),
        ),
      ),
    );
  }
}
