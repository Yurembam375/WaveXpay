import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

@RoutePage()
class AutopayScreen extends StatelessWidget {
  const AutopayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#F3F3F3"),
      appBar: AppBar(
        title: Text(
          "Manage AutoPay",
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
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Column(
            children: [
              Container(
                height: 264.h,
                color: HexColor("#05099F"),
                child: Row(
                  children: [
                    Expanded(
                        flex: 5,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 30.h,
                              ),
                              const Text(
                                "Never miss a \npayment with \nAutoPay",
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                "Set it up once and\nwe’ll take care of your\nrecurring payments",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        )),
                    Expanded(
                        flex: 5,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/image/uz.png",
                            ),
                          ],
                        ))
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: Container(
              height: 515.h,
              padding: const EdgeInsets.symmetric(vertical: 10),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white, // Background color for TextField
                borderRadius: BorderRadius.circular(11), // Rounded corners
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
              child: Column(
                children: [
                  const Text(
                    "Why use AutoPay?",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                        ),
                        child: Container(
                          height: 101.h,
                          width: 365.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: HexColor("#ED7D45"),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 4,
                                child: Container(),
                              ),
                              const Expanded(
                                flex: 8,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    //SizedBox(width: 200,height: 50,),
                                    Text(
                                      "Easy Set-Up",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Text("set it up with just one click",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white))
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 77.h,
                        width: 119.w,
                        decoration: BoxDecoration(
                          color: HexColor("#F3F3F3"),
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(50),
                            bottomRight: Radius.circular(50),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/image/clock.png",
                              height: 90.h,
                              width: 90.w,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Stack(
                    alignment: Alignment.centerRight,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 10,
                        ),
                        child: Container(
                          height: 101,
                          width: 365.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: HexColor("#ED7D45"),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                //SizedBox(width: 200,height: 50,),
                                Text(
                                  "Automatic & on-time \nPayment",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700),
                                ),
                                Text(
                                    "Avoid late fee with hassle-free \npayments",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white))
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 77.h,
                        width: 119.w,
                        decoration: BoxDecoration(
                          color: HexColor("#F3F3F3"),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(50),
                            bottomLeft: Radius.circular(50),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/image/fx.png",
                              height: 100.h,
                              width: 100.w,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                        ),
                        child: Container(
                          height: 101.h,
                          width: 365.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: HexColor("#ED7D45"),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 4,
                                child: Container(),
                              ),
                              const Expanded(
                                flex: 8,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    //SizedBox(width: 200,height: 50,),
                                    Text(
                                      "Instant Notifications",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Text(
                                        "Get instant updates \nwhenever a payment has been made",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white))
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 77.h,
                        width: 119.w,
                        decoration: BoxDecoration(
                          color: HexColor("#F3F3F3"),
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(50),
                            bottomRight: Radius.circular(50),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/image/bell.png",
                                height: 60.h,
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Stack(
                    alignment: Alignment.centerRight,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 10,
                        ),
                        child: Container(
                          height: 101.h,
                          width: 365.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: HexColor("#ED7D45"),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                //SizedBox(width: 200,height: 50,),
                                Text(
                                  "Full Control On Settings",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700),
                                ),
                                Text(
                                    "Pause,modify and cancel any time you \nwant!",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white))
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 77.h,
                        width: 119.w,
                        decoration: BoxDecoration(
                          color: HexColor("#F3F3F3"),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(50),
                            bottomLeft: Radius.circular(50),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/image/gear.png",
                                height: 60.h,
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
