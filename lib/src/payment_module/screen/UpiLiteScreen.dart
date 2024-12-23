import 'dart:developer';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wavexpay/src/payment_module/widget/amtbutton.dart';

@RoutePage()
class UpiLiteScreen extends StatefulWidget {
  const UpiLiteScreen({super.key});

  @override
  State<UpiLiteScreen> createState() => _UpiLiteScreenState();
}

class _UpiLiteScreenState extends State<UpiLiteScreen> {
  late final TextEditingController amountController;
  late final PageController pageController;
  int totalAmt = 0;

  @override
  void initState() {
    super.initState();
    amountController = TextEditingController(text: "");
    pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    amountController.dispose();
    pageController.dispose();
    super.dispose();
  }

  void amounthandle(String amt) {
    setState(() {
      totalAmt += int.parse(amt);
      amountController.text = totalAmt.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "UPI Lite",
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
        actions: [
          IconButton(
            icon: Image.asset(
              "assets/image/Frame (16).png",
              height: 20.h,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // PageView Section
              _buildPageViewSection(),
              const SizedBox(height: 10),
              // Add Money Section
              _buildAddMoneySection(),
              const SizedBox(height: 10.0),
              // Payment History Section
              _buildPaymentHistorySection(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPageViewSection() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      width: double.infinity,
      decoration: _boxDecoration(),
      child: Column(
        children: [
          SizedBox(
            height: 160.h,
            child: PageView.builder(
              controller: pageController,
              itemCount: 3,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset("assets/image/Rectangle 2578.png"),
                      SizedBox(height: 3.h),
                      const Text(
                        "100% acceptance like UPI",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),  SizedBox(height: 3.h),
                      const Text(
                        "Works even when your bank is down",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          SmoothPageIndicator(
            controller: pageController,
            count: 3,
            effect: ColorTransitionEffect(
              spacing: 15,
              activeDotColor: HexColor("#05099F"),
              dotHeight: 5,
              dotWidth: 5,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAddMoneySection() {
    return Container(
      padding: const EdgeInsets.fromLTRB(15, 10, 15, 40),
      decoration: _boxDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Add Money",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
          ),
          SizedBox(height: 5.h),
          TextFormField(
            controller: amountController,
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
                color: Colors.black,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade400),
                borderRadius: BorderRadius.circular(8),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.black),
                borderRadius: BorderRadius.circular(8),
              ),
              hintText: "Enter Amount",
            ),
          ),
          SizedBox(height: 10.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Amtbutton(
                amount: "500",
                onTap: () {
                  log("500");
                  amounthandle("500");
                },
              ),
              Amtbutton(
                amount: "1000",
                onTap: () {
                  log("1000");
                  amounthandle("1000");
                },
              ),
              Amtbutton(
                amount: "2000",
                onTap: () {
                  log("2000");
                  amounthandle("2000");
                },
              ),
            ],
          ),
          SizedBox(height: 20.h),
          SizedBox(
            height: 40.h,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(
                  HexColor("#05099F"),
                ),
              ),
              child: Text(
                "ADD",
                style: TextStyle(fontSize: 20.sp, color: Colors.white),
              ),
            ),
          ),
          SizedBox(height: 10.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "By continuing, you agree to ",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                    fontWeight: FontWeight.w600),
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  "Wavex pay",
                  style: TextStyle(
                      color: HexColor("#05099F"),
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildPaymentHistorySection() {
    return Container(
      height: 62,
      decoration: _boxDecoration(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          children: [
            Image.asset(
              "assets/image/Vector (27).png",
              height: 20.0,
              color: HexColor("#05099F"),
            ),
            const SizedBox(width: 20.0),
            const Text(
              "Payment History",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }

  BoxDecoration _boxDecoration() {
    return BoxDecoration(
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
    );
  }
}
