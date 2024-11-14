import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:wavexpay/router/router.gr.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Import ScreenUtil

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        Homescreen(),
        Orscreen(),
        Transectionscreen(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return Stack(
          clipBehavior: Clip.none, // Allow the circle to extend beyond the tab bar
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 20.h), // Use ScreenUtil for padding
              child: BottomNavigationBar(
                backgroundColor: HexColor("#05099F"),
                currentIndex: tabsRouter.activeIndex,
                onTap: (index) {
                  tabsRouter.setActiveIndex(index);
                },
                type: BottomNavigationBarType.fixed,
                items: [
                  BottomNavigationBarItem(
                    icon: Padding(
                      padding: EdgeInsets.only(top: 5.h), // Use ScreenUtil for padding
                      child: Image.asset(
                        'assets/image/homeIcon.png',
                        width: 30.w, // Use ScreenUtil for width
                        height: 30.h, // Use ScreenUtil for height
                      ),
                    ),
                    label: '', // Empty label
                  ),
                  const BottomNavigationBarItem(
                    icon: SizedBox.shrink(), // Empty for the center
                    label: '', // Empty label
                  ),
                  BottomNavigationBarItem(
                    icon: Padding(
                      padding: EdgeInsets.only(top: 5.h), // Use ScreenUtil for padding
                      child: Image.asset(
                        'assets/image/trans.png',
                        width: 30.w, // Use ScreenUtil for width
                        height: 30.h, // Use ScreenUtil for height
                      ),
                    ),
                    label: '', // Empty label
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 17.h, // Use ScreenUtil for position
              left: MediaQuery.of(context).size.width / 2 - 35.w, // Center it horizontally
              child: Container(
                width: 80.w, // Use ScreenUtil for width
                height: 80.h, // Use ScreenUtil for height
                decoration: BoxDecoration(
                  color: HexColor("#FFFFFF"),
                  shape: BoxShape.circle,
                     boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 3,
                      blurRadius: 5,
                      offset: const Offset(0, 3), // Shadow position
                    ),
                  ],
                ),
                child: Center(
                  child: Image.asset(
                    'assets/image/or.png',
                    width: 40.w, // Use ScreenUtil for width
                    height: 40.h, // Use ScreenUtil for height
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
