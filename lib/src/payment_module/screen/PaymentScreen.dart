import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

@RoutePage()
class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Container(
            color: HexColor("#05099F"),
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        // context.router.popAndPush(const DashboardRoute());
                      },
                      icon: const Icon(
                        Icons.keyboard_arrow_left,
                        color: Colors.white,
                        // size: 35.h,
                      ),
                    ),
                    CircleAvatar(
                      child: Text('A',
                          style: TextStyle(
                              fontSize: 25.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.black)),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Kaiztren",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          "+91 9746618923",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.phone,
                          color: Colors.white,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.more_vert,
                          color: Colors.white,
                        ))
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 350.h,
          ),
          Container(
            height: 25.h,
            width: 100.w,
            decoration: BoxDecoration(
              color: HexColor("#ECECFA"),
              borderRadius: BorderRadius.circular(50),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 0.5,
                  blurRadius: 1,
                  offset: const Offset(0, 1),
                ),
              ],
            ),
            child: const Center(
              child: Text("November 6, 2024"),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    height: 170.h,
                    width: 250.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 0.5,
                          blurRadius: 1,
                          offset: const Offset(0, 1),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Payment to Abhit",
                            style: TextStyle(fontSize: 17),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          const Text(
                            "₹2000",
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                          SizedBox(
                            height: 50.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/image/Group 1180.png",
                                    height: 10,
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  const Text("Sent Securely"),
                                ],
                              ),
                              const Text("9:21 pm")
                            ],
                          )
                        ],
                      ),
                    )),
              ],
            ),
          ),
        ],
      )),
      floatingActionButton: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius:
                  BorderRadius.circular(15), // Set the desired border radius
              child: SizedBox(
                width: 100,
                height: 40,
                child: FloatingActionButton(
                  backgroundColor: HexColor("#05099F"),
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        20), // Border radius for the button
                  ),
                  child: const Text(
                    "Pay",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 20.h,
            ),
            SizedBox(
              height: 50.h, // Use ScreenUtil to scale button height
              width: 150.w,
              child: Container(
                decoration: BoxDecoration(
                  color: HexColor("#ECECFA"), // Background color for TextField
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none, // Remove the border
                    contentPadding: EdgeInsets.symmetric(
                        horizontal: 30.w, vertical: 10.h.h),
                    hintText: 'Massage...',
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.send,
                        color: HexColor("#05099F"),
                      ),
                    ),

                    hintStyle: const TextStyle(color: Colors.black),
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
