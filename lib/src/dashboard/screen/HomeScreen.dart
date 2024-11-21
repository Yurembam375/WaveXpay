import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:wavexpay/router/router.gr.dart';
import 'package:wavexpay/widget/billandRehargeCard.dart';
import 'package:wavexpay/widget/moneyTanferCard.dart';
import 'package:wavexpay/widget/travelCardWidget.dart';
import 'package:wavexpay/widget/viewAllbutton.dart';

@RoutePage()
class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: CircleAvatar(
            radius: 10,
          ),
        ),
        title: Row(
          children: [
            const Text(
              "Add Address",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_drop_down, color: HexColor("#FFFFFF")),
            )
          ],
        ),
        backgroundColor: HexColor("#04076E"),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Image.asset(
                "assets/image/walet.png",
                height: 20.h,
              )),
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
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 170.h,
              child: PageView.builder(
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                        height: 150,
                        width: double.infinity,
                        color: HexColor("#05099F")),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 150.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: BorderRadius.circular(10)),
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
                            title: "Pay To \nContact",
                            imagePath: "assets/image/contact.png",
                            onTap: () {}),
                        MoneyTransferCard(
                            title: "To Bank/\n UPI ID",
                            imagePath: "assets/image/bank.png",
                            onTap: () {}),
                        MoneyTransferCard(
                            title: "Self \n Account",
                            imagePath: "assets/image/selfAcc.png",
                            onTap: () {}),
                        MoneyTransferCard(
                            title: "Check \nBalance",
                            imagePath: "assets/image/checkBal.png",
                            onTap: () {}),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 170.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondary,
                    //color: HexColor("#CFCFEC"),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Bill & Recharge",
                            style: TextStyle(fontSize: 20),
                          ),
                          Viewallbutton(
                            onpress: () {
                              context.pushRoute(const Billscreen());
                            },
                          )
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        BillandRechargeCard(
                          imagePath: "assets/image/recharge.png",
                          label: "Recharge",
                          onTap: () {},
                        ),
                        BillandRechargeCard(
                            imagePath: "assets/image/credit.png",
                            label: "Credit",
                            onTap: () {}),
                        BillandRechargeCard(
                            imagePath: "assets/image/elc.png",
                            label: "Electricity",
                            onTap: () {}),
                        BillandRechargeCard(
                            imagePath: "assets/image/ion_home-outline.png",
                            label: "Rent",
                            onTap: () {}),
                        BillandRechargeCard(
                            imagePath: "assets/image/boardband.png",
                            label: "Boardband",
                            onTap: () {}),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 160,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  TravelCardWidget(
                    title: "Travels",
                    travelOptions: const [
                      {
                        "imagePath": "assets/image/flight.png",
                        "label": "Flight"
                      },
                      {"imagePath": "assets/image/bus.png", "label": "Bus"},
                      {"imagePath": "assets/image/train.png", "label": "Train"},
                      {
                        "imagePath": "assets/image/hotel.png",
                        "label": "Hotels"
                      },
                    ],
                    onOptionTap: (label) {
                      log("Tapped on $label");
                    },
                  ),
                  TravelCardWidget(
                    title: "Travel Services",
                    travelOptions: const [
                      {
                        "imagePath": "assets/image/Group 1351.png",
                        "label": "Airport\nCabs"
                      },
                      {
                        "imagePath": "assets/image/scuba 1.png",
                        "label": "Travel\nActivities"
                      },
                      {
                        "imagePath": "assets/image/logos_visa.png",
                        "label": "Visa2\nFly"
                      },
                      {
                        "imagePath": "assets/image/Group 1342.png",
                        "label": "Travel\nInsurance"
                      },
                    ],
                    onOptionTap: (label) {
                      log("Tapped on $label");
                    },
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: 40.h, // Use ScreenUtil to scale button height
                  width: 150.w,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor:
                          WidgetStateProperty.all(HexColor("#FFFFFF")),
                      shadowColor: WidgetStateProperty.all(
                          HexColor("#05099F")), // Shadow color
                      elevation:
                          WidgetStateProperty.all(2.0), // Shadow elevation
                      side: WidgetStateProperty.all(
                        BorderSide(
                          color: HexColor("#05099F"),
                          // width: 2.0
                        ), // Border color and width
                      ),
                    ),
                    child: Text(
                      "Movie Ticket", maxLines: 1,
                      style: TextStyle(
                        fontSize: 15.sp,
                        color: Colors.black,
                      ), // Use ScreenUtil for font size
                    ),
                  ),
                ),
                SizedBox(
                  height: 40.h, // Use ScreenUtil to scale button height
                  width: 150.w,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(
                        Theme.of(context).colorScheme.primaryContainer,
                      ),
                      shadowColor: WidgetStateProperty.all(
                        HexColor("#05099F"), // Shadow color
                      ),
                      elevation: WidgetStateProperty.all(
                        2.0, // Shadow elevation
                      ),
                      side: WidgetStateProperty.all(
                        BorderSide(
                          color: HexColor("#05099F"), // Border color
                          width: 2.0, // Border width
                        ),
                      ),
                    ),
                    child: Text(
                      "Event Ticket",
                      style: TextStyle(
                        fontSize: 15.sp,
                        color: Colors.black,
                      ), // Use ScreenUtil for font size
                    ),
                  ),
                ),
              ],
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
      ),
    );
  }
}
