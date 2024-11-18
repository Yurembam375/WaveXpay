import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:wavexpay/core/provider/theme/theme.dart';
import 'package:wavexpay/core/provider/theme/themeProvider.dart';
import 'package:wavexpay/router/router.gr.dart';
import 'package:wavexpay/widget/travelCardWidget.dart';

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
            icon: const Icon(
              Icons.wallet,
              color: Colors.white,
            ),
          ),
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
                        Column(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: HexColor("#05099F")),
                              child: Center(
                                child: Image.asset(
                                  "assets/image/contact.png",
                                  height: 40,
                                  width: 40,
                                ),
                              ),
                            ),
                            const Text(
                              "Pay To \nContact",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: HexColor("#05099F")),
                              child: Center(
                                child: Image.asset(
                                  "assets/image/bank.png",
                                  height: 40,
                                  width: 40,
                                ),
                              ),
                            ),
                            const Text(
                              "To Bank/\n UPI ID",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: HexColor("#05099F")),
                              child: Center(
                                child: Image.asset(
                                  "assets/image/selfAcc.png",
                                  height: 40,
                                  width: 40,
                                ),
                              ),
                            ),
                            const Text(
                              "Self \n Account",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: HexColor("#05099F")),
                              child: Center(
                                child: Image.asset(
                                  "assets/image/checkBal.png",
                                  height: 40,
                                  width: 40,
                                ),
                              ),
                            ),
                            const Text(
                              "Check \nBalance",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
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
                          TextButton(
                            onPressed: () {
                              context.pushRoute(const Billscreen());
                            },
                            child: Text(
                              "View All",
                              style: TextStyle(
                                  color: HexColor("#05099F"),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 70,
                              width: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Theme.of(context)
                                      .colorScheme
                                      .primaryContainer),
                              child: Center(
                                child: Image.asset(
                                  "assets/image/recharge.png",
                                  height: 50,
                                  width: 40,
                                  //color: Colors.black,
                                ),
                              ),
                            ),
                            const Text(
                              "Recharge",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 70,
                              width: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Theme.of(context)
                                      .colorScheme
                                      .primaryContainer),
                              child: Center(
                                child: Image.asset(
                                  "assets/image/credit.png",
                                  height: 50,
                                  width: 40,
                                ),
                              ),
                            ),
                            const Text(
                              "Credit",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 70,
                              width: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Theme.of(context)
                                      .colorScheme
                                      .primaryContainer),
                              child: Center(
                                child: Image.asset(
                                  "assets/image/elc.png",
                                  height: 50,
                                  width: 40,
                                ),
                              ),
                            ),
                            const Text(
                              "Electricity",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 70,
                              width: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Theme.of(context)
                                      .colorScheme
                                      .primaryContainer),
                              child: Center(
                                child: Image.asset(
                                  "assets/image/ion_home-outline.png",
                                  height: 50,
                                  width: 40,
                                ),
                              ),
                            ),
                            const Text(
                              "Rent",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 70,
                              width: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Theme.of(context)
                                      .colorScheme
                                      .primaryContainer),
                              child: Center(
                                child: Image.asset(
                                  "assets/image/boardband.png",
                                  height: 50,
                                  width: 40,
                                ),
                              ),
                            ),
                            const Text(
                              "Boardband",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
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
                      "Movie Ticket",
                      style: TextStyle(
                        fontSize: 20.sp,
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
                      "Event Ticket",
                      style: TextStyle(
                        fontSize: 20.sp,
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
