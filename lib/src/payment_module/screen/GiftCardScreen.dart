import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

@RoutePage()
class GiftcardScreen extends StatelessWidget {
  const GiftcardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Gift Card",
          style: TextStyle(color: Colors.white, fontSize: 20.sp),
        ),
        centerTitle: true,
        backgroundColor: HexColor("#04076E"),
        leading: IconButton(
          onPressed: () {
            // context.router.popAndPush(const DashboardRoute());
          },
          icon: const Icon(
            Icons.keyboard_arrow_left,
            color: Colors.white,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Image.asset(
              "assets/image/Frame (16).png",
              height: 20.h,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              height: 80.h,
            ),
            Center(
              child: Image.asset(
                "assets/image/Frame (17).png",
                height: 124,
                width: 124,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            const Text(
              "Total Gift Card Balance",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 30.h,
            ),
            const Text(
              "₹  0",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 10.h,
            ),
            const Text(
              "Last updated 5 minutes ago",
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              "Refresh Balance",
              style: TextStyle(fontSize: 14, color: HexColor("#05099F")),
            ),
            SizedBox(
              height: 20.h,
            ),
            Divider(
              color: Colors.black,
              height: 10.h,
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white, // Background color for TextField
                borderRadius: BorderRadius.circular(20), // Rounded corners
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5), // Shadow color
                    spreadRadius: 0.5, // Spread radius
                    blurRadius: 1, // Blur radius
                    offset: const Offset(0, 1),
                    // Offset in the X and Y direction
                  ),
                ],
              ),
              child: GestureDetector(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.add_circle_outline,
                            size: 24.h,
                          ),
                          const SizedBox(
                            width: 20.0,
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Claim Gift Card",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                              Text(
                                "Use Card Id & Pin",
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Text(
                        "CLAIM NOW",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: HexColor("#05099F")),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 44.h, // Use ScreenUtil to scale button height
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(
                    HexColor("#05099F"),
                  ),
                ),
                child: Text(
                  "BUY NEW CARD",
                  style: TextStyle(
                      fontSize: 20.sp,
                      color: Colors.white), // Use ScreenUtil for font size
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
