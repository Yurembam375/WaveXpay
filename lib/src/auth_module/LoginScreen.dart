import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:wavexpay/src/auth_module/OtpScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 100.h), // Use ScreenUtil to scale height
            Image.asset(
              "assets/image/login.png",
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
                decoration: const InputDecoration(

                    // labelText: 'Phone Number',
                    border: OutlineInputBorder(),
                    counterText: ""),
                initialCountryCode: 'US', // Default country code
                onChanged: (phone) {
                  print(phone.completeNumber); // Full phone number
                },
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
            SizedBox(height: 25.h), // Use ScreenUtil to scale height
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 15.w), // Use ScreenUtil for padding
              child: SizedBox(
                height: 50.h, // Use ScreenUtil to scale button height
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // Handle button press
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const OtpScreen()),
                    );
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
            ),
          ],
        ),
      ),
    );
  }
}
