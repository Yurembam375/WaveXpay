import 'package:auto_route/auto_route.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:wavexpay/src/dashboard/widget/chart.dart';
import 'package:wavexpay/src/dashboard/widget/tranZwidget.dart';
import 'package:wavexpay/src/dashboard/widget/viewAllbutton.dart';

@RoutePage()
class TransectionScreen extends StatefulWidget {
  const TransectionScreen({super.key});

  @override
  State<TransectionScreen> createState() => _TransectionScreenState();
}

class _TransectionScreenState extends State<TransectionScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Number of tabs
      child: Scaffold(
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
                  fontWeight: FontWeight.bold,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_drop_down, color: HexColor("#FFFFFF")),
              )
            ],
          ),
          backgroundColor: HexColor("#1315A3"),
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
          child: Stack(
            children: [
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 200.h,
                        color: HexColor("#1315A3"),
                      ),
                      Positioned(
                        top: 20,
                        left: 30,
                        right: 30,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: ButtonsTabBar(
                            height: 40.h,
                            width: 100.w,
                            radius: 50.r,
                            contentCenter: true,
                            backgroundColor: HexColor("#ED7D45"),
                            labelStyle: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                            unselectedBackgroundColor: HexColor("#8787BC"),
                            unselectedLabelStyle: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                            tabs: const [
                              Tab(
                                child: Text("Daily"),
                              ),
                              Tab(
                                child: Text("Weekly"),
                              ),
                              Tab(
                                child: Text("Monthly"),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 500.h,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 190.h,
                        ),
                        Container(
                          height: 300.h,
                          color: Theme.of(context).colorScheme.surface,
                          // color: Colors.pinkAccent,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 15.w,
                                    vertical: 10), // Use ScreenUtil for padding
                                child: SizedBox(
                                  height: 50
                                      .h, // Use ScreenUtil to scale button height
                                  width: double.infinity,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.grey[
                                          200], // Background color for TextField
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    child: TextField(
                                      decoration: InputDecoration(
                                          border: InputBorder
                                              .none, // Remove the border
                                          contentPadding: EdgeInsets.symmetric(
                                              horizontal: 30.w,
                                              vertical: 10
                                                  .h
                                                  .h), // Padding for text inside the TextField
                                          hintText:
                                              'Search by name, number or UPI ID',
                                          // Optional hint text
                                          hintStyle: const TextStyle(
                                              color: Colors.grey),
                                          prefixIcon: const Icon(
                                            Icons.search,
                                            size: 27,
                                          ) // Optional hint style
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 22,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 55.h,
                                      width: 150.w,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          border:
                                              Border.all(color: Colors.black)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          const Text(
                                            "Download Statement",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Image.asset(
                                            "assets/image/download.png",
                                            height: 20,
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 55.h,
                                      width: 80.w,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          border:
                                              Border.all(color: Colors.black)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          const Text(
                                            "Filter",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Image.asset(
                                            "assets/image/mage_filter.png",
                                            height: 20,
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      "Recent Transfer",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Viewallbutton(
                                      onpress: () {
                                        showModalBottomSheet(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return Expanded(
                                              child: SizedBox(
                                                height: 600.h,
                                                child: const Tranzwidget(),
                                              ),
                                            );
                                          },
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              ),
                              const Expanded(
                                child: SizedBox(
                                  child: Tranzwidget(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                top: 100,
                left: 15,
                right: 15,
                child: SizedBox(
                  height: 290.h,
                  child: const TabBarView(
                    children: [
                      Chart(
                        viewType: "Daily",
                      ),
                      Chart(viewType: "Weekly"),
                      Chart(viewType: "Monthly"),
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
