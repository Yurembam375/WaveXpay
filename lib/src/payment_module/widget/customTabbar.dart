import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CustomTabBarState createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Tab Bar
        Container(
          height: 60.h,
          decoration: BoxDecoration(
            color: Colors.white, // Background color
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5, // Wider spread radius
                blurRadius: 4, // Slightly increased blur
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Row(
            children: [
              // UPI ID Tab
              Expanded(
                flex: 5,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = 0; // Select the UPI ID tab
                    });
                  },
                  child: Container(
                    height: 60.h,
                    decoration: BoxDecoration(
                      color: Colors.white, // Fixed background color
                      boxShadow: selectedIndex == 0
                          ? [
                              // Bottom and right shadow
                              BoxShadow(
                                color: HexColor("#05099F").withOpacity(0.4),
                                spreadRadius: 1,
                                blurRadius: 3,
                                offset: const Offset(0, 3),
                              ),
                            ]
                          : [],
                    ),
                    child: Center(
                      child: Text(
                        'UPI ID',
                        style: TextStyle(
                          color: selectedIndex == 0
                              ? HexColor("#05099F")
                              : Colors.grey, // Dynamic text color
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              // UPI NUMBER Ta
              const SizedBox(
                width: 7,
              ),
              Expanded(
                flex: 5,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = 1; // Select the UPI NUMBER tab
                    });
                  },
                  child: Container(
                    height: 60.h,
                    decoration: BoxDecoration(
                      color: Colors.white, // Fixed background color
                      boxShadow: selectedIndex == 1
                          ? [
                              BoxShadow(
                                color: HexColor("#05099F").withOpacity(0.4),
                                spreadRadius: 1,
                                blurRadius: 3,
                                offset: const Offset(0, 3),
                              ),
                            ]
                          : [],
                    ),
                    child: Center(
                      child: Text(
                        'UPI NUMBER',
                        style: TextStyle(
                          color: selectedIndex == 1
                              ? HexColor("#05099F")
                              : Colors.grey, // Dynamic text color
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        // Tab Content
        Expanded(
          child: selectedIndex == 0
              ? Center(
                  child: Text(
                    'UPI ID Content',
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: HexColor("#05099F"),
                    ),
                  ),
                )
              : Center(
                  child: Text(
                    'UPI NUMBER Content',
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: HexColor("#05099F"),
                    ),
                  ),
                ),
        ),
      ],
    );
  }
}
