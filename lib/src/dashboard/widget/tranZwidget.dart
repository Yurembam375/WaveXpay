import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

class Tranzwidget extends StatelessWidget {
  const Tranzwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
            child: Container(
              height: 60.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: HexColor('#CFCFEC'), // Background color for TextField
                borderRadius: BorderRadius.circular(25), // Rounded corners
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
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 24.r,
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Razal Ali",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "   4 hours ago",
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ],
                    ),
                    RichText(
                      text: TextSpan(
                        text: '₹',
                        style: TextStyle(
                          color: HexColor("#05099F"),
                        ),
                        children: const <TextSpan>[
                          TextSpan(
                              text: '+23000',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green)),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
