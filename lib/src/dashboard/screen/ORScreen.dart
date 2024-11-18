import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

@RoutePage()
class Orscreen extends StatelessWidget {
  const Orscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Image.asset(
              "assets/image/scaner.png",
              height: 20,
              width: 20,
            ),
          )
        ],
      ),
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 430.h,
                    width: 350.w,
                    decoration: BoxDecoration(
                        color: HexColor("#0D0FA0"),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 40,
                        ),
                        const Text(
                          "Divya Dutta",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold,fontSize: 20),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 270.h,
                          width: 270.w,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                              child: Image.asset("assets/image/pay.png")),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text(
                    "UPI ID:8089432334@ybl",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "MANAGE",
                        style: TextStyle(
                            color: HexColor(
                              "#0D0FA0",
                            ),
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: SizedBox(
                  height: 50.h, // Use ScreenUtil to scale button height
                  // width: 330.w,
                  width: double.infinity,
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

                            //width: 2.0
                          ), // Border color and width
                        ),
                        shape: WidgetStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.share,
                          color: HexColor("#05099F"),
                        ),
                        Text(
                          "SHARE OR",
                          style: TextStyle(
                            fontSize: 20.sp,
                            color: HexColor("#05099F"),
                          ), // Use ScreenUtil for font size
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            // top: (ScreenUtil().screenHeight / 2) -
            //     37.r, // Center vertically minus the radius
            top: 5.h,
            left: (ScreenUtil().screenWidth / 2) -
                37.r, // Center horizontally minus the radius
            child: CircleAvatar(
              radius: 37.r,
            ),
          ),
        ],
      ),
    );
  }
}
