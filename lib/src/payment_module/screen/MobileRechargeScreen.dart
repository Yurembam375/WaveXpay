import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:wavexpay/src/payment_module/widget/rechageCard.dart';

@RoutePage()
class MobileRechargeScreen extends StatefulWidget {
  const MobileRechargeScreen({super.key});

  @override
  State<MobileRechargeScreen> createState() => _MobileRechargeScreenState();
}

class _MobileRechargeScreenState extends State<MobileRechargeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Mobile Recharge",
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 200.h,
                child: PageView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Image.asset("assets/image/sale.png"),
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: 10.w,
                    vertical: 10), // Use ScreenUtil for padding
                child: SizedBox(
                  height: 50.h, // Use ScreenUtil to scale button height
                  width: double.infinity,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      // Background color for TextField
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 0.5,
                          blurRadius: 1,
                          offset: const Offset(0, 1),
                        ),
                      ],
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 30.w,
                              vertical: 10
                                  .h
                                  .h), // Padding for text inside the TextField
                          hintText: 'Search any contact/ name',
                          // Optional hint text
                          hintStyle: const TextStyle(color: Colors.grey),
                          prefixIcon: const Icon(
                            Icons.search,
                            size: 27,
                            color: Colors.grey,
                          ) // Optional hint style
                          ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  // height: 280.h,
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
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Recent",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      RechargeCard(
                        imagePath: "assets/image/image 108.png",
                        name: "Me",
                        phoneNumber: "8070609010",
                        lastRechargeInfo: "Last recharge ₹299 on 02 Nov 2024",
                      ),
                      RechargeCard(
                        imagePath: "assets/image/unnamed 1.png",
                        name: "Me",
                        phoneNumber: "8070609010",
                        lastRechargeInfo: "Last recharge ₹299 on 02 Nov 2024",
                      ),
                      RechargeCard(
                        imagePath: "assets/image/image 108.png",
                        name: "Me",
                        phoneNumber: "8070609010",
                        lastRechargeInfo: "Last recharge ₹299 on 02 Nov 2024",
                      ),
                      RechargeCard(
                        imagePath: "assets/image/unnamed 1.png",
                        name: "Me",
                        phoneNumber: "8070609010",
                        lastRechargeInfo: "Last recharge ₹299 on 02 Nov 2024",
                      ),
                      RechargeCard(
                        imagePath: "assets/image/image 108.png",
                        name: "Me",
                        phoneNumber: "8070609010",
                        lastRechargeInfo: "Last recharge ₹299 on 02 Nov 2024",
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
