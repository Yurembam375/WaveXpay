import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:wavexpay/src/payment_module/widget/rewardCard.dart';

@RoutePage()
class RewardScreen extends StatelessWidget {
  const RewardScreen({super.key});

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
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 200.h,
                child: PageView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Image.asset("assets/image/sale.png");
                  },
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                height: 46.h,
                decoration: BoxDecoration(
                  color: Colors.white, // Background color for TextField
                  borderRadius: BorderRadius.circular(1), // Rounded corners
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 24.h,
                      width: 103.w,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.withOpacity(0.5)),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            CupertinoIcons.arrow_up_arrow_down,
                            size: 15,
                            color: Colors.black,
                          ),
                          Text(
                            "Latest",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down,
                            size: 15,
                            color: Colors.black,
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 24.h,
                      width: 103.w,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.withOpacity(0.5)),
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            "assets/image/bec.png",
                            height: 10,
                          ),
                          const Text(
                            "Filter",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                          const Icon(
                            Icons.keyboard_arrow_down,
                            size: 15,
                            color: Colors.black,
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 24.h,
                      width: 103.w,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.withOpacity(0.5)),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.favorite_border,
                            size: 15,
                            color: Colors.black,
                          ),
                          Text(
                            "Favourites",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              RewardCard(
                imagePath: "assets/image/ajio.png",
                title: "AJIO",
                subtitle: "Get ₹500 Off*",
                description: "Fashion & Clothing",
                icon: Icons.favorite_border,
                onTap: () {
                  //print("Favorite tapped");
                },
              ),
              RewardCard(
                imagePath: "assets/image/md.png",
                title: "McDonalds",
                subtitle: "Get ₹500 Off*",
                description: "Fashion & Clothing",
                icon: Icons.favorite_border,
                onTap: () {
                  //print("Favorite tapped");
                },
              ),
              RewardCard(
                imagePath: "assets/image/len.png",
                title: "Lens Kart",
                subtitle: "Get ₹500 Off*",
                description: "Comtrust Eye Care Hosita",
                icon: Icons.favorite_border,
                onTap: () {
                  //print("Favorite tapped");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
