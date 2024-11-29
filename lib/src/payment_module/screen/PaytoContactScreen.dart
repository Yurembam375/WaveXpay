import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:wavexpay/widget/ContactTile.dart';
import 'package:wavexpay/widget/ContactTransection.dart';

@RoutePage()
class Paytocontactscreen extends StatelessWidget {
  const Paytocontactscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            snap: false,
            pinned: false,
            floating: false,
            flexibleSpace: FlexibleSpaceBar(
              background: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 17.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Pay To Contact",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold),
                      //TextStyle
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                          "To any UPI app",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10.0,
                          ),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Image.asset(
                          "assets/image/Group 1074.png",
                          height: 25.h,
                        ),
                        Image.asset(
                          "assets/image/bhim-upi-icon 1.png",
                          height: 20.h,
                        ),
                      ],
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
                            color: Colors
                                .grey[200], // Background color for TextField
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none, // Remove the border
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
                  ],
                ),
              ),
            ), //FlexibleSpaceBar
            expandedHeight: 170.h,
            backgroundColor: HexColor("#04076E"),
            leading: Row(
              children: [
                IconButton(
                  onPressed: () {
                    // context.router.popAndPush(const DashboardRoute());
                  },
                  icon: Icon(
                    Icons.keyboard_arrow_left,
                    color: Colors.white,
                    size: 35.h,
                  ),
                ),
              ],
            ),
            actions: <Widget>[
              IconButton(
                icon: Image.asset(
                  "assets/image/Frame (16).png",
                  height: 20.h,
                ),
                onPressed: () {},
              ),
              //SliverList //IconButton
            ], //<Widget>[]
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 20.w),
              child: const Text(
                "Recents",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
              child: Container(
                height: 300.h,
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
                  padding: EdgeInsets.symmetric(vertical: 10.h),
                  child: ListView.builder(
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return ContactTransaction(
                        initials: "T",
                        name: "Kaiztren",
                        details: "2,000 Sent Securely",
                        date: "06/11/24",
                        onTap: () {
                          log("Tapped on Kaiztren transaction");
                        },
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 20.w),
              child: const Text(
                "All people on UPI",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
              child: Container(
                height: 300.h,
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
                  padding: EdgeInsets.symmetric(vertical: 10.h),
                  child: ListView.builder(
                    itemCount: 30,
                    itemBuilder: (context, index) {
                      return ContactTile(
                        initials: "B",
                        name: "Bhuvan",
                        onTap: () {
                          log("Tapped on Bhuvan");
                        },
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
  floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: ClipRRect(
          borderRadius:
              BorderRadius.circular(15), // Set the desired border radius
          child: SizedBox(
            width: 150,
            height: 40,
            child: FloatingActionButton(
              backgroundColor: HexColor("#05099F"),
              onPressed: () {
              },
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(20), // Border radius for the button
              ),
              child: const Text(
                "+ New Payment",
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
