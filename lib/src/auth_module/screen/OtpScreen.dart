import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wavexpay/router/router.gr.dart';
@RoutePage()
class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  bool _isChecked = false;
  final controller = PageController(initialPage: 2);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    //  backgroundColor: const Color(0xFFFFFFFF),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 70.h), // Use ScreenUtil to scale height
            Image.asset(
              "assets/image/onbording3.png",
            ),
            Center(
              child: SmoothPageIndicator(
                controller: controller,
                count: 3,
                effect: ExpandingDotsEffect(
                    activeDotColor: HexColor("#05099F"),
                    dotHeight: 8.h,
                    dotWidth: 10.w,
                    //  type: WormType.thinUnderground,
                    dotColor: HexColor("#05099F")),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 15.w), // Use ScreenUtil for padding
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Verify OTP",
                    style: TextStyle(
                      color: HexColor("#05099F"),
                      fontSize: 35.sp, // Use ScreenUtil to scale font size
                      fontWeight: FontWeight.bold,
                      shadows: const [
                        Shadow(
                          offset: Offset(2.0, 2.0),
                          blurRadius: 4.0,
                          color: Color(0xFFB0B0B0),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 4.h), // Use ScreenUtil to scale height
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 15.w), // Use ScreenUtil for padding
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Enter the four digit OTP",
                    style: TextStyle(
                      fontSize: 16.sp, // Adjust the font size as needed
                      shadows: const [
                        Shadow(
                          offset: Offset(2.0, 2.0),
                          blurRadius: 4.0,
                          color: Color(0xFFB0B0B0),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h), // Use ScreenUtil to scale height
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 20.w), // Use ScreenUtil for padding
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  OtpTextField(
                    fieldWidth: 40.w, // Use ScreenUtil to scale field width
                    fieldHeight: 40.h, // Use ScreenUtil to scale field height
                    numberOfFields: 4,
                    borderColor: HexColor("#05099F"),
                    showFieldAsBox: true,
                    borderRadius: BorderRadius.circular(70.r),
                    // focusedBorderColor:
                    //     HexColor("#05099F"), // Use ScreenUtil for border radius
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
            SizedBox(height: 25.h), // Use ScreenUtil to scale height
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 15.w), // Use ScreenUtil for padding
              child: SizedBox(
                height: 50.h, // Use ScreenUtil to scale button height
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                     context.router.push(const DashboardRoute());
                  },
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(
                      HexColor("#05099F"),
                    ),
                  ),
                  child: Text(
                    "Done",
                    style: TextStyle(
                        fontSize: 20.sp,
                        color: Colors.white), // Use ScreenUtil for font size
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.h), // Use ScreenUtil to scale height
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Checkbox(
                  value: _isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      _isChecked = value ?? false;
                    });
                  },
                ),
                const Text("Terms of Condition")
              ],
            ),
          ],
        ),
      ),
    );
  }
}
