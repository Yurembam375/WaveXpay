import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:wavexpay/widget/actionCard.dart';

@RoutePage()
class Billscreen extends StatelessWidget {
  const Billscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: CircleAvatar(
            radius: 10,
          ),
        ),
        title: const Text(
          "Bill & Recharge",
          style: TextStyle(
              color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: HexColor("#04076E"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.question_mark_outlined,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 170.h,
              child: PageView.builder(
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 155.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: HexColor("#ED7D45"),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Image.asset(
                              "assets/image/image 101.png",
                              height: 400,
                            ),
                          ),
                          Expanded(
                            flex: 7,
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Get up to 500 rupees cashback",
                                  style: TextStyle(
                                      color: HexColor(
                                        "#05099F",
                                      ),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  "on your first ever Credit Card \nBill payment with Wavexpay",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      SizedBox(
                                        height: 30
                                            .h, // Use ScreenUtil to scale button height
                                        width: 70.w,
                                        child: ElevatedButton(
                                          onPressed: () {},
                                          style: ButtonStyle(
                                            backgroundColor:
                                                WidgetStateProperty.all(
                                                    HexColor("#05099F")),
                                            shadowColor: WidgetStateProperty
                                                .all(HexColor(
                                                    "#05099F")), // Shadow color
                                            elevation: WidgetStateProperty.all(
                                                2.0), // Shadow elevation
                                            side: WidgetStateProperty.all(
                                              BorderSide(
                                                color: HexColor("#05099F"),
                                                // width: 2.0
                                              ), // Border color and width
                                            ),
                                          ),
                                          child: Text(
                                            "PayNow", maxLines: 1,
                                            style: TextStyle(
                                              fontSize: 7.sp,
                                              color: Colors.white,
                                            ), // Use ScreenUtil for font size
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                  height: 180.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: HexColor("#FFFFFF"),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black
                            .withOpacity(0.1), // Shadow color with transparency
                        blurRadius: 10, // Softness of the shadow
                        spreadRadius: 2, // Spread of the shadow
                        offset: const Offset(0, 4), // Shadow position (x, y)
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Upcoming Bill",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "View All",
                                style: TextStyle(
                                    color: HexColor("#05099F"),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        child: Container(
                          height: 120.h,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: HexColor("#FFFFFF"),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.black45),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 10.h,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      "assets/image/image 102.png",
                                      height: 30,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    const Text(
                                      "Nikhil \n       8653009116",
                                      textAlign: TextAlign.center,
                                    ),
                                    SizedBox(
                                      width: 150.w,
                                    ),
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.more_vert))
                                  ],
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Divider(
                                  color: Colors.black45,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      "Plan of ₹1299 expires on 12\nNov 2024",
                                      style: TextStyle(fontSize: 10),
                                    ),
                                    SizedBox(
                                      height: 30
                                          .h, // Use ScreenUtil to scale button height
                                      width: 70.w,
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        style: ButtonStyle(
                                          backgroundColor:
                                              WidgetStateProperty.all(
                                                  HexColor("#05099F")),
                                          shadowColor: WidgetStateProperty.all(
                                              HexColor(
                                                  "#05099F")), // Shadow color
                                          elevation: WidgetStateProperty.all(
                                              2.0), // Shadow elevation
                                          shape: WidgetStateProperty.all(
                                            RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(
                                                  8.0), // Reduce border radius here
                                              side: BorderSide(
                                                color: HexColor(
                                                    "#05099F"), // Border color
                                                width:
                                                    1.0, // Adjust border width as needed
                                              ),
                                            ),
                                          ),
                                        ),
                                        child: Text(
                                          "Recharge",
                                          maxLines: 1,
                                          style: TextStyle(
                                              fontSize: 7.sp,
                                              color: Colors.white,
                                              fontWeight: FontWeight
                                                  .bold), // Use ScreenUtil for font size
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 170.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondary,
                    //color: HexColor("#CFCFEC"),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Popular",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ActionCard(
                            title: "Mobile\nRecharge",
                            imagePath:
                                "assets/image/material-symbols_laptop-car-outline-sharp (1).png",
                            onTap: () {}),
                        ActionCard(
                            title: "FASTag\n Recharge",
                            imagePath: "assets/image/fast.png",
                            onTap: () {}),
                        ActionCard(
                            title: "DTH",
                            imagePath: "assets/image/game-icons_radar-dish.png",
                            onTap: () {}),
                        ActionCard(
                            title: "Loan\nRepayment",
                            imagePath:
                                "assets/image/hugeicons_money-bag-01.png",
                            onTap: () {}),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 250.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondary,
                    //color: HexColor("#CFCFEC"),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Utilities",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ActionCard(
                            title: "Rent",
                            imagePath: "assets/image/ion_home-outline (1).png",
                            onTap: () {}),
                        ActionCard(
                            title: "Water",
                            imagePath: "assets/image/ion_water-outline.png",
                            onTap: () {}),
                        ActionCard(
                            title: "Electricity",
                            imagePath:
                                "assets/image/material-symbols_laptop-car-outline-sharp.png",
                            onTap: () {}),
                        ActionCard(
                            title: "Cylinder",
                            imagePath: "assets/image/Group 1220.png",
                            onTap: () {}),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ActionCard(
                            title: "Pospaid",
                            imagePath:
                                "assets/image/material-symbols_laptop-car-outline-sharp (1).png",
                            onTap: () {}),
                        ActionCard(
                            title: "Broadband",
                            imagePath:
                                "assets/image/material-symbols_laptop-car-outline-sharp (2).png",
                            onTap: () {}),
                        ActionCard(
                            title: "Credit Card",
                            imagePath:
                                "assets/image/bi_credit-card-2-front.png",
                            onTap: () {}),
                        ActionCard(
                            title: "Pipe Gas",
                            imagePath: "assets/image/Group 1222.png",
                            onTap: () {}),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 170.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondary,
                    //color: HexColor("#CFCFEC"),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Recharge",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ActionCard(
                            title: "Mobile\nRecharge",
                            imagePath:
                                "assets/image/material-symbols_laptop-car-outline-sharp (1).png",
                            onTap: () {}),
                        ActionCard(
                            title: "FASTag\n Recharge",
                            imagePath: "assets/image/fast.png",
                            onTap: () {}),
                        ActionCard(
                            title: "DTH",
                            imagePath: "assets/image/game-icons_radar-dish.png",
                            onTap: () {}),
                        ActionCard(
                            title: "Cable TV",
                            imagePath: "assets/image/teenyicons_tv-outline.png",
                            onTap: () {}),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 170.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondary,
                    //color: HexColor("#CFCFEC"),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Donations & Devotion",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ActionCard(
                            title: "Donate",
                            imagePath: "assets/image/mdi_donation-outline.png",
                            onTap: () {}),
                        ActionCard(
                            title: "Devotion",
                            imagePath:
                                "assets/image/material-symbols-light_folded-hands-outline.png",
                            onTap: () {}),
                        ActionCard(
                            title: "Ram Mandir",
                            imagePath: "assets/image/twemoji_hindu-temple.png",
                            onTap: () {}),
                        ActionCard(
                            title: "Donate meal",
                            imagePath:
                                "assets/image/solar_hand-heart-linear.png",
                            onTap: () {}),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 300.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondary,
                    //color: HexColor("#CFCFEC"),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Financial Services & Taxes",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ActionCard(
                            title: "LIC/\n Insurance",
                            imagePath:
                                "assets/image/wpf_recurring-appointment.png",
                            onTap: () {}),
                        ActionCard(
                            title: "Municipal Tax &\nServices",
                            imagePath: "assets/image/ion_home-outline (2).png",
                            onTap: () {}),
                        ActionCard(
                            title: "Recurring \nDeposit",
                            imagePath:
                                "assets/image/fluent-mdl2_recurring-event.png",
                            onTap: () {}),
                        ActionCard(
                            title: "NSP",
                            imagePath: "assets/image/Group (1).png",
                            onTap: () {}),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ActionCard(
                              title: "Loan\n Repayment",
                              imagePath:
                                  "assets/image/hugeicons_money-bag-01.png",
                              onTap: () {}),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 300.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondary,
                    //color: HexColor("#CFCFEC"),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "More Services",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ActionCard(
                            title: "Clubs& \n Association",
                            imagePath:
                                "assets/image/pepicons-pencil_people.png",
                            onTap: () {}),
                        ActionCard(
                            title: "Apartments",
                            imagePath:
                                "assets/image/mdi_house-city-outline.png",
                            onTap: () {}),
                        ActionCard(
                            title: "Hospitals ",
                            imagePath: "assets/image/Group (2).png",
                            onTap: () {}),
                        ActionCard(
                            title: "Buy FASTag",
                            imagePath: "assets/image/Frame (15).png",
                            onTap: () {}),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ActionCard(
                            title: "Rental",
                            imagePath:
                                "assets/image/material-symbols_car-rental-outline.png",
                            onTap: () {}),
                        ActionCard(
                            title: "NCMC\nRecharge",
                            imagePath: "assets/image/ph_device-mobile-thin.png",
                            onTap: () {}),
                        ActionCard(
                            title: "Education\nFees",
                            imagePath:
                                "assets/image/lsicon_education-outline.png",
                            onTap: () {}),
                        ActionCard(
                            title: "Prepaid Meter",
                            imagePath: "assets/image/cil_speedometer.png",
                            onTap: () {}),
                      ],
                    )
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
