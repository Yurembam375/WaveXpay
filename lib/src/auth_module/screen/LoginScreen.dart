import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wavexpay/router/router.gr.dart';


@RoutePage()
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final controller = PageController(initialPage: 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color(0xFFFFFFFF),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 10.h), // Use ScreenUtil to scale height
            Image.asset(
              "assets/image/login.png",
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
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 15.w), // Use ScreenUtil for padding
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Sign Up Your Account",
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
                    "We will send you One time Password (OTP)on this \n mobile number to verify this number",
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
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: IntlPhoneField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[200], // Gray background color
                  border: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: HexColor("#FFFFFF"), width: 2),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: HexColor("#FFFFFF"), width: 2),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: HexColor("#FFFFFF"), width: 2),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  counterText: "", // Hides the counter text
                ),
                dropdownIconPosition: IconPosition.trailing,
                dropdownIcon:
                    Icon(Icons.arrow_drop_down, color: HexColor("#FFFFFF")),
                initialCountryCode: 'IN', // Default country code
                onChanged: (phone) {
                  //print(phone.completeNumber); // Full phone number
                },
                flagsButtonPadding: const EdgeInsets.only(right: 20),
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
                    "Secuiring your personal data is our top priority",
                    style: TextStyle(
                      color: HexColor("#05099F"),
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
            SizedBox(height: 2.h), // Use ScreenUtil to scale height
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 10.h,
                  horizontal: 15.w), // Use ScreenUtil for padding
              child: SizedBox(
                height: 50.h, // Use ScreenUtil to scale button height
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // Handle button press
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //       builder: (context) => const OtpScreen()),
                    // );
                  //  context.router.push(const OtpRoute());
                  },
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(
                      HexColor("#05099F"),
                    ),
                  ),
                  child: Text(
                    "Get OTP",
                    style: TextStyle(
                        fontSize: 20.sp,
                        color: Colors.white), // Use ScreenUtil for font size
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
