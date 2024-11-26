import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:wavexpay/router/router.gr.dart';

import 'package:wavexpay/widget/moneyTanferCard.dart';
import 'package:wavexpay/widget/paymentCard.dart';
import 'package:wavexpay/widget/rowWidget.dart';

@RoutePage()
class Profileandpayone extends StatefulWidget {
  const Profileandpayone({super.key});

  @override
  State<Profileandpayone> createState() => _ProfileandpayoneState();
}

class _ProfileandpayoneState extends State<Profileandpayone> {
  bool _switchValue = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile & Payments",
          style: TextStyle(color: Colors.white, fontSize: 15.sp),
        ),
        centerTitle: true,
        backgroundColor: HexColor("#04076E"),
        leading: IconButton(
          onPressed: () {
            context.router.popAndPush(const DashboardRoute());
          },
          icon: const Icon(
            Icons.keyboard_arrow_left,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
              child: Container(
                height: 70.h,
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
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 24.r,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment
                            .start, // Align items to the start
                        mainAxisAlignment:
                            MainAxisAlignment.center, // Center vertically
                        children: [
                          const Text(
                            "Razal Ali",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "+91 8274997260",
                            style: TextStyle(color: Colors.grey[700]),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 150.w,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.keyboard_arrow_right))
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
              child: Container(
                height: 70.h,
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
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment
                            .start, // Align items to the start
                        mainAxisAlignment:
                            MainAxisAlignment.center, // Center vertically
                        children: [
                          const Text(
                            "Receive Money",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Image.asset("assets/image/scaner.png",
                                  height: 15.h, color: Colors.grey[700]),
                              SizedBox(
                                width: 5.w,
                              ),
                              Text(
                                "UPI ID : 8348888971@wxp",
                                style: TextStyle(color: Colors.grey[700]),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 139.w,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.keyboard_arrow_right))
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 280.h,
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Money Transfers",
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        MoneyTransferCard(
                            title: "Bank \n Accounts",
                            imagePath: "assets/image/cil_bank.png",
                            onTap: () {}),
                        MoneyTransferCard(
                            title: "Debit &\nCredit cards",
                            imagePath:
                                "assets/image/marketeq_debit-purchase.png",
                            onTap: () {}),
                        MoneyTransferCard(
                            title: "Wavexpay\nwallet",
                            imagePath: "assets/image/Group (3).png",
                            onTap: () {}),
                        MoneyTransferCard(
                            title: "Wavexpay\n Gift Card",
                            imagePath: "assets/image/iconamoon_gift-light.png",
                            onTap: () {}),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MoneyTransferCard(
                              title: "UPI Lite",
                              imagePath: "assets/image/Vector (11).png",
                              onTap: () {}),
                          SizedBox(
                            width: 40.w,
                          ),
                          MoneyTransferCard(
                              title: "RuPay Credit\non UPIs",
                              imagePath: "assets/image/Group 1167.png",
                              onTap: () {}),
                          SizedBox(
                            width: 40.w,
                          ),
                          MoneyTransferCard(
                              title: "Credit Line\non UPI",
                              imagePath: "assets/image/upi-payment-icon 2.png",
                              onTap: () {}),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 150.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondary,
                    //color: HexColor("#CFCFEC"),
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Payment Management",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          PaymentCard(
                              title: "AutoPay",
                              imagePath: "assets/image/Vector (13).png",
                              onTap: () {}),
                          SizedBox(
                            width: 32.w,
                          ),
                          PaymentCard(
                              title: "International",
                              imagePath: "assets/image/Group (5).png",
                              onTap: () {}),
                          SizedBox(
                            width: 32.w,
                          ),
                          PaymentCard(
                              title: "UPI Settings",
                              imagePath: "assets/image/Group (4).png",
                              onTap: () {}),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
              child: Container(
                height: 70.h,
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
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/image/Vector (12).png",
                        height: 40,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment
                            .start, // Align items to the start
                        mainAxisAlignment:
                            MainAxisAlignment.center, // Center vertically
                        children: [
                          const Text(
                            "Wavexpay Account Aggregator",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "One place for all your linked accounts\nand consents",
                            style: TextStyle(color: Colors.grey[700]),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 450.h,
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Settings & Preference",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    RowWidget(
                        title: "Languages",
                        subtitle: "Chosen language: English",
                        iconPath: "assets/image/Vector (14).png",
                        onTap: () {}),
                    Padding(
                      padding: EdgeInsets.only(left: 23.w),
                      child: Divider(
                        color: HexColor("#C5C5C5"),
                      ),
                    ),
                    RowWidget(
                        title: "Bill Notifications",
                        subtitle: "Receive alerts when bill is generated",
                        iconPath: "assets/image/Vector (15).png",
                        onTap: () {}),
                    Padding(
                      padding: EdgeInsets.only(left: 23.w),
                      child: Divider(
                        color: HexColor("#C5C5C5"),
                      ),
                    ),
                    RowWidget(
                        title: "Permissions",
                        subtitle: "Manage data sharing settings",
                        iconPath: "assets/image/Vector (21).png",
                        onTap: () {}),
                    Padding(
                      padding: EdgeInsets.only(left: 23.w),
                      child: Divider(
                        color: HexColor("#C5C5C5"),
                      ),
                    ),
                    RowWidget(
                        title: "Theme",
                        subtitle: "Change App theme",
                        iconPath: "assets/image/icon 5.png",
                        onTap: () {}),
                    Padding(
                      padding: EdgeInsets.only(left: 23.w),
                      child: Divider(
                        color: HexColor("#C5C5C5"),
                      ),
                    ),
                    RowWidget(
                        title: "Data Preferences",
                        subtitle: "Manage all the shared information",
                        iconPath: "assets/image/Vector (16).png",
                        onTap: () {}),
                    Padding(
                      padding: EdgeInsets.only(left: 23.w),
                      child: Divider(
                        color: HexColor("#C5C5C5"),
                      ),
                    ),
                    RowWidget(
                        title: "Reminders",
                        subtitle: "Never miss another bill payment",
                        iconPath: "assets/image/Vector (18).png",
                        onTap: () {}),
                    Padding(
                      padding: EdgeInsets.only(left: 23.w),
                      child: Divider(
                        color: HexColor("#C5C5C5"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 270.h,
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Security",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  "assets/image/Vector (19).png",
                                  height: 25.0,
                                  color: HexColor('#05099F'),
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text(
                                      "Change Password",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Biometric and screen locks",
                                      style: TextStyle(color: Colors.grey[700]),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            CupertinoSwitch(
                              value: _switchValue,
                              onChanged: (value) {
                                setState(() {
                                  _switchValue = value;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 23.w),
                      child: Divider(
                        color: HexColor("#C5C5C5"),
                      ),
                    ),
                    RowWidget(
                        title: "Screen Lock",
                        subtitle: "Reset your app password",
                        iconPath: "assets/image/Vector (15).png",
                        onTap: () {}),
                    Padding(
                      padding: EdgeInsets.only(left: 23.w),
                      child: Divider(
                        color: HexColor("#C5C5C5"),
                      ),
                    ),
                    RowWidget(
                        title: "Block Contacts",
                        subtitle: "",
                        iconPath: "assets/image/icon 2.png",
                        onTap: () {}),
                    Padding(
                      padding: EdgeInsets.only(left: 23.w),
                      child: Divider(
                        color: HexColor("#C5C5C5"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 120.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white, // Background color for TextField
                  borderRadius: BorderRadius.circular(30), // Rounded corners
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Security",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    RowWidget(
                        title: "About Wavexpay",
                        subtitle: "Privacy policy, Terms & About Wavexpay ",
                        iconPath: "assets/image/Group (7).png",
                        onTap: () {}),
                    Padding(
                      padding: EdgeInsets.only(left: 23.w),
                      child: Divider(
                        color: HexColor("#C5C5C5"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 120.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white, // Background color for TextField
                  borderRadius: BorderRadius.circular(30), // Rounded corners
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Security",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    RowWidget(
                        title: "Logout",
                        subtitle: "",
                        iconPath: "assets/image/Vector (22).png",
                        onTap: () {}),
                    Padding(
                      padding: EdgeInsets.only(left: 23.w),
                      child: Divider(
                        color: HexColor("#C5C5C5"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
