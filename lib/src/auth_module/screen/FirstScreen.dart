import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wavexpay/router/router.gr.dart';

@RoutePage()
class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final controller = PageController(initialPage: 0);
    return Scaffold(
      //  backgroundColor: const Color(0xFFFFFFFF),
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 100.h), // Use ScreenUtil to scale height
          Image.asset(
            "assets/image/image1.png",
          ),
          SizedBox(
            height: 10.h,
          ),
          Center(
            child: SmoothPageIndicator(
              controller: controller,
              count: 3,
              effect: ExpandingDotsEffect(
                  activeDotColor: HexColor("#05099F"),
                  dotHeight: 8,
                  dotWidth: 10,
                  //  type: WormType.thinUnderground,
                  dotColor: HexColor("#05099F")),
            ),
          ),
          SizedBox(
            height: 50.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: 15.w), // Use ScreenUtil for padding
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Just Say to Pay!",
                  style: TextStyle(
                    // color: HexColor("#05099F"),
                    fontSize: 35.sp, // Use ScreenUtil to scale font size
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.h), // Use ScreenUtil to scale height
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: 15.w), // Use ScreenUtil for padding
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Control your payments with a simple voice \ncommand, no need to tap, type, or swipe—\njust tell us to pay!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.sp,
                    // Adjust the font size as needed
                  ),
                ),
              ],
            ),
          ),
          // Switch(
          //   value: Provider.of<ThemeProvider>(context).themeData ==
          //       darkMode, // Check if dark mode is active
          //   onChanged: (value) {
          //     Provider.of<ThemeProvider>(context, listen: false)
          //         .toggleTheme(); // Toggle the theme
          //   },
          // ),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: ClipRRect(
          borderRadius:
              BorderRadius.circular(15), // Set the desired border radius
          child: SizedBox(
            width: 100,
            height: 40,
            child: FloatingActionButton(
              backgroundColor: HexColor("#05099F"),
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => const LoginScreen()),
                // );
                context.router.push(const LoginRoute());
              },
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(20), // Border radius for the button
              ),
              child: const Text(
                "STARTED",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
