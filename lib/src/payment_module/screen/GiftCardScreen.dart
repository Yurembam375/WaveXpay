import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
@RoutePage()
class GiftcardScreen extends StatelessWidget {
  const GiftcardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Gift Card",
            style: TextStyle(color: Colors.white, fontSize: 20.sp),
          ),
          centerTitle: true,
          backgroundColor: HexColor("#04076E"),
          leading: IconButton(
            onPressed: () {
              // context.router.popAndPush(const DashboardRoute());
            },
            icon: const Icon(
              Icons.keyboard_arrow_left,
              color: Colors.white,
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: Image.asset(
                "assets/image/Frame (16).png",
                height: 20.h,
              ),
              onPressed: () {},
            ),
          ],
        ),
    );
  }
}