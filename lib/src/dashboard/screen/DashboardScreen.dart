import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:wavexpay/core/provider/navbar/NavbarVisibilityProvider.dart';

import '../../../router/router.gr.dart';

@RoutePage()
class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bottomPadding = MediaQuery.of(context).viewPadding.bottom;

    return AutoTabsScaffold(
      routes: const [
        HomeRoute(),
        OrRoute(),
        TransectionRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return Consumer<NavbarVisibilityProvider>(
          builder: (context, provider, child) {
            // Only render the bottom navigation if it's visible
            if (!provider.isVisible) return const SizedBox.shrink();

            return AnimatedContainer(
              duration: const Duration(milliseconds: 100),
              height: 80.h + bottomPadding,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  SafeArea(
                    bottom: true,
                    child: BottomNavigationBar(
                      backgroundColor: HexColor("#05099F"),
                      currentIndex: tabsRouter.activeIndex,
                      onTap: (index) => tabsRouter.setActiveIndex(index),
                      type: BottomNavigationBarType.fixed,
                      selectedItemColor: Colors.white,
                      unselectedItemColor: Colors.white,
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
                          label: 'Home',
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
                          label: 'Transaction',
                        ),
                      ],
                    ),
                  ),
                  // Floating Button
                  Positioned(
                    bottom: bottomPadding + 10.h,
                    left: MediaQuery.of(context).size.width / 2 - 40.w,
                    child: GestureDetector(
                      onTap: () => tabsRouter.setActiveIndex(1),
                      child: Container(
                        width: 80.w,
                        height: 80.h,
                        decoration: BoxDecoration(
                          color: HexColor("#0C15CE"),
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              spreadRadius: 3,
                              blurRadius: 5,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/image/or.png',
                              width: 40.w,
                              height: 40.h,
                              color: Colors.white,
                            ),
                            const Text(
                              "Scan",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
