import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

@RoutePage()
class Tire3screen extends StatelessWidget {
  const Tire3screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Tire3",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.sp)),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Add Passcode",
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 20.sp),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: 20.w), // Use ScreenUtil for padding
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                OtpTextField(
                  fieldWidth: 45.w, // Use ScreenUtil to scale field width
                  fieldHeight: 45.h, // Use ScreenUtil to scale field height
                  numberOfFields: 6,
                  borderColor: HexColor("#05099F"),
                  showFieldAsBox: true,
                  borderRadius: BorderRadius.circular(10.r),
                  focusedBorderColor:
                      HexColor("#05099F"), // Use ScreenUtil for border radius
                  onCodeChanged: (String code) {
                    // Handle code changes here
                  },
                  onSubmit: (String verificationCode) {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text("Verification Code"),
                          content: Text('Code entered is $verificationCode'),
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ),
           SizedBox(
            height: 30.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: 15.w), // Use ScreenUtil for padding
            child: SizedBox(
              height: 40.h, // Use ScreenUtil to scale button height
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(
                    HexColor("#05099F"),
                  ),
                ),
                child: Text(
                  "SUBMMIT",
                  style: TextStyle(
                      fontSize: 20.sp,
                      color: Colors.white), // Use ScreenUtil for font size
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
