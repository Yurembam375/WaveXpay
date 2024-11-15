import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:wavexpay/router/router.gr.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        Homescreen(),
        Orscreen(), // Assuming Orscreen is the QR screen
        Transectionscreen(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return Stack(
          clipBehavior: Clip.none,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 20.h),
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
                      padding: EdgeInsets.only(top: 5.h),
                      child: Image.asset(
                        'assets/image/homeIcon.png',
                        width: 30.w,
                        height: 30.h,
                      ),
                    ),
                    label: '',
                  ),
                  const BottomNavigationBarItem(
                    icon: SizedBox.shrink(),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: Padding(
                      padding: EdgeInsets.only(top: 5.h),
                      child: Image.asset(
                        'assets/image/trans.png',
                        width: 30.w,
                        height: 30.h,
                      ),
                    ),
                    label: '',
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 17.h,
              left: MediaQuery.of(context).size.width / 2 - 35.w,
              child: GestureDetector(
                onTap: () => tabsRouter.setActiveIndex(1), // Navigate to QR screen
                child: Container(
                  width: 80.w,
                  height: 80.h,
                  decoration: BoxDecoration(
                    color: HexColor("#FFFFFF"),
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 3,
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Center(
                    child: Image.asset(
                      'assets/image/or.png',
                      width: 40.w,
                      height: 40.h,
                    ),
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
