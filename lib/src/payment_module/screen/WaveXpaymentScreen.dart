import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

@RoutePage()
class Wavexpaymentscreen extends StatelessWidget {
  const Wavexpaymentscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Wavexpay Payment",
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
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 30.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              height: 100.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 0.5,
                    blurRadius: 1,
                    offset: const Offset(0, 1),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Text(
                        "Wallet Balance",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 3.w,
                      ),
                      Image.asset(
                        "assets/image/Group 1199.png",
                        height: 20,
                      )
                    ],
                  ),
                  RichText(
                    text: TextSpan(
                      text: '₹',
                      style:
                          TextStyle(fontSize: 33, color: HexColor("#05099F")),
                      children: const <TextSpan>[
                        TextSpan(
                            text: '1400',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                color: Colors.black)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              height: 255.h,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 0.5,
                    blurRadius: 1,
                    offset: const Offset(0, 1),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    // controller: houseController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter your amount";
                      }
                      return null;
                    },
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        prefix: Image.asset(
                          "assets/image/Vector (24).png",
                          height: 15,
                        ),
                        floatingLabelBehavior: FloatingLabelBehavior
                            .always, // Makes label float on focus
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade400),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),

                        //fillColor: Colors.grey[200],
                        //filled: true,
                        hintText: "Enter Amount"),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  const Text(
                    "Recommended",
                    style: TextStyle(color: Colors.black),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 50.h,
                        width: 100.w,
                        decoration: BoxDecoration(
                          border: Border.all(color: HexColor("#05099F")),
                        ),
                        child: Center(
                          child: RichText(
                            text: TextSpan(
                              text: '₹',
                              style: TextStyle(color: HexColor("#05099F")),
                              children: const <TextSpan>[
                                TextSpan(
                                    text: '10,000',
                                    style: TextStyle(color: Colors.black)),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 50.h,
                        width: 100.w,
                        decoration: BoxDecoration(
                          border: Border.all(color: HexColor("#05099F")),
                        ),
                        child: Center(
                          child: RichText(
                            text: TextSpan(
                              text: '₹',
                              style: TextStyle(color: HexColor("#05099F")),
                              children: const <TextSpan>[
                                TextSpan(
                                    text: '15,000',
                                    style: TextStyle(color: Colors.black)),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 50.h,
                        width: 100.w,
                        decoration: BoxDecoration(
                          border: Border.all(color: HexColor("#05099F")),
                        ),
                        child: Center(
                          child: RichText(
                            text: TextSpan(
                              text: '₹',
                              style: TextStyle(color: HexColor("#05099F")),
                              children: const <TextSpan>[
                                TextSpan(
                                    text: '20,000',
                                    style: TextStyle(color: Colors.black)),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 15.w), // Use ScreenUtil for padding
                    child: SizedBox(
                      height: 50.h, // Use ScreenUtil to scale button height
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all(
                            HexColor("#05099F"),
                          ),
                        ),
                        child: Text(
                          "Proceed To Topup",
                          style: TextStyle(
                              fontSize: 20.sp,
                              color:
                                  Colors.white), // Use ScreenUtil for font size
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 0.5,
                    blurRadius: 1,
                    offset: const Offset(0, 1),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 30.h,
                          width: 30.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: HexColor("#05099F"),
                          ),
                          child: Center(
                            child: Image.asset(
                              "assets/image/Vector (25).png",
                              height: 20.0,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Set Auto Topup",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Never run out of balance",
                              style: TextStyle(color: Colors.grey[700]),
                            ),
                          ],
                        ),
                      ],
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.keyboard_arrow_right),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 0.5,
                    blurRadius: 1,
                    offset: const Offset(0, 1),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 30.h,
                          width: 30.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: HexColor("#05099F"),
                          ),
                          child: Center(
                            child: Image.asset(
                              "assets/image/Vector (26).png",
                              height: 20.0,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Upgrade Wallet",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.keyboard_arrow_right),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 0.5,
                    blurRadius: 1,
                    offset: const Offset(0, 1),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 30.h,
                          width: 30.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: HexColor("#05099F"),
                          ),
                          child: Center(
                            child: Image.asset(
                              "assets/image/Vector (27).png",
                              height: 20.0,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Wallet Transaction History",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.keyboard_arrow_right),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
