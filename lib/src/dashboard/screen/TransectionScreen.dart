import 'package:auto_route/auto_route.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:wavexpay/widget/chart.dart';

@RoutePage()
class Transectionscreen extends StatefulWidget {
  const Transectionscreen({super.key});

  @override
  State<Transectionscreen> createState() => _TransectionscreenState();
}

class _TransectionscreenState extends State<Transectionscreen> {
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
        body: Stack(
          children: [
            Column(
              children: [
                Stack(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Container(
                        height: 200.h,
                        color: HexColor("#1315A3"),
                      ),
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
                Expanded(
                  flex: 7,
                  child: Container(
                    color: Theme.of(context).colorScheme.surface,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 120.h,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 15.w), // Use ScreenUtil for padding
                          child: SizedBox(
                            height:
                                50.h, // Use ScreenUtil to scale button height
                            width: double.infinity,
                            child: TextField(
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  // borderSide:
                                  //     BorderSide(color: Colors.grey.shade400),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  // borderSide:
                                  //     const BorderSide(color: Colors.black),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                fillColor: Colors.grey[200],
                                filled: true,                               
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: 100,
              left: 15,
              right: 15,
              child: Container(
                decoration: BoxDecoration(
                  // color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 2,
                      blurRadius: 8,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                height: 350.h,
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
    );
  }
}
