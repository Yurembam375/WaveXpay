import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

class UpiIdwidget extends StatelessWidget {
  const UpiIdwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                // color: Colors.white, // Background color for TextField
                borderRadius: BorderRadius.circular(20), // Rounded corners
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5), // Shadow color
                    spreadRadius: 0.5, // Spread radius
                    blurRadius: 2, // Blur radius
                    offset: const Offset(0, 3),
                    // Offset in the X and Y direction
                  ),
                ],
              ),
              child: Image.asset(
                "assets/image/Frame 1206.png",
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
               // height: 240.h,
                decoration: BoxDecoration(
                  color: Colors.white, // Background color for TextField
                  borderRadius: BorderRadius.circular(15), // Rounded corners
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5), // Shadow color
                      spreadRadius: 0.5, // Spread radius
                      blurRadius: 2, // Blur radius
                      offset: const Offset(0, 3),
                      // Offset in the X and Y direction
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "@axl",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            const Text(
                              "Powered by",
                              style: TextStyle(
                                fontSize: 8,
                                color: Colors.grey,
                              ),
                            ),
                            Image.asset(
                              "assets/image/kisspng-axis-bank-mortgage-loan-interest-bank-5abb34edb50682.3250839015222182217415 1.png",
                              height: 20,
                            )
                          ],
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      height: 100.h,
                      width: 250.w,
                      child: Row(
                        children: [
                          Container(
                            height: 80,
                            width: 5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            width: 20.h,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "123456987001@axl",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 17),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    //    SizedBox(
                                    //   width: 20.h,
                                    // ),
                                    Image.asset(
                                      "assets/image/Group 1249.png",
                                      height: 30,
                                    ),
                                    SizedBox(
                                      width: 10.h,
                                    ),
                                    const Text(
                                      "HDFC Bank - 4046",
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.grey),
                                    )
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset(
                          "assets/image/Group 1313.png",
                          height: 20,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
               // height: 240.h,
                decoration: BoxDecoration(
                  color: Colors.white, // Background color for TextField
                  borderRadius: BorderRadius.circular(15), // Rounded corners
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5), // Shadow color
                      spreadRadius: 0.5, // Spread radius
                      blurRadius: 2, // Blur radius
                      offset: const Offset(0, 3),
                      // Offset in the X and Y direction
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "@axl",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            const Text(
                              "Powered by",
                              style: TextStyle(
                                fontSize: 8,
                                color: Colors.grey,
                              ),
                            ),
                            Image.asset(
                              "assets/image/kisspng-axis-bank-mortgage-loan-interest-bank-5abb34edb50682.3250839015222182217415 1.png",
                              height: 20,
                            )
                          ],
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      height: 100.h,
                      width: 250.w,
                      child: Row(
                        children: [
                          Container(
                            height: 80,
                            width: 5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            width: 20.h,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "123456987001@axl",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 17),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    //    SizedBox(
                                    //   width: 20.h,
                                    // ),
                                    Image.asset(
                                      "assets/image/Group 1249.png",
                                      height: 30,
                                    ),
                                    SizedBox(
                                      width: 10.h,
                                    ),
                                    const Text(
                                      "HDFC Bank - 4046",
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.grey),
                                    )
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(
                                15), // Set the desired border radius
                            child: SizedBox(
                              width: 100.w,
                              height: 40.h,
                              child: FloatingActionButton(
                                backgroundColor: HexColor("#05099F"),
                                onPressed: () {},
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      20), // Border radius for the button
                                ),
                                child: const Text(
                                  "VERIFY DEVICE",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              //  height: 240.h,
                decoration: BoxDecoration(
                  color: Colors.white, // Background color for TextField
                  borderRadius: BorderRadius.circular(15), // Rounded corners
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5), // Shadow color
                      spreadRadius: 0.5, // Spread radius
                      blurRadius: 2, // Blur radius
                      offset: const Offset(0, 3),
                      // Offset in the X and Y direction
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "@axl",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            const Text(
                              "Powered by",
                              style: TextStyle(
                                fontSize: 8,
                                color: Colors.grey,
                              ),
                            ),
                            Image.asset(
                              "assets/image/kisspng-axis-bank-mortgage-loan-interest-bank-5abb34edb50682.3250839015222182217415 1.png",
                              height: 20,
                            )
                          ],
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      height: 100.h,
                      width: 250.w,
                      child: Row(
                        children: [
                          Container(
                            height: 80,
                            width: 5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            width: 20.h,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "123456987001@axl",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 17),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    //    SizedBox(
                                    //   width: 20.h,
                                    // ),
                                    Image.asset(
                                      "assets/image/Group 1249.png",
                                      height: 30,
                                    ),
                                    SizedBox(
                                      width: 10.h,
                                    ),
                                    const Text(
                                      "HDFC Bank - 4046",
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.grey),
                                    )
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset(
                          "assets/image/Group 1313.png",
                          height: 20,
                        )
                      ],
                    ),
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
