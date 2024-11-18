import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

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
                            child: Container(
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
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
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
                                              elevation:
                                                  WidgetStateProperty.all(
                                                      2.0), // Shadow elevation
                                              side: WidgetStateProperty.all(
                                                BorderSide(
                                                  color: HexColor("#05099F"),
                                                  // width: 2.0
                                                ), // Border color and width
                                              ),
                                            ),
                                            child: Text(
                                              "Pay Now",
                                              style: TextStyle(
                                                fontSize: 12.sp,
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
                                    const SizedBox(
                                      width: 250,
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
                                          style: TextStyle(
                                              fontSize: 11.sp,
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
                        Column(
                          children: [
                            Container(
                              height: 70,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                // color: Theme.of(context)
                                //     .colorScheme
                                //     .primaryContainer
                              ),
                              child: Center(
                                child: Image.asset(
                                  "assets/image/material-symbols_laptop-car-outline-sharp (1).png",
                                  height: 50,
                                  width: 40,
                                ),
                              ),
                            ),
                            const Text(
                              "Mobile\nRecharge",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 70,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                // color: Theme.of(context)
                                //     .colorScheme
                                //     .primaryContainer
                              ),
                              child: Center(
                                child: Image.asset(
                                  "assets/image/fast.png",
                                  height: 50,
                                  width: 40,
                                  color: HexColor("#05099F"),
                                ),
                              ),
                            ),
                            const Text(
                              "FASTag\n Recharge",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 70,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                // color: Theme.of(context)
                                //     .colorScheme
                                //     .primaryContainer
                              ),
                              child: Center(
                                child: Image.asset(
                                  "assets/image/game-icons_radar-dish.png",
                                  height: 50,
                                  width: 40,
                                ),
                              ),
                            ),
                            const Text(
                              "DTH",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 70,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                // color: Theme.of(context)
                                //     .colorScheme
                                //     .primaryContainer
                              ),
                              child: Center(
                                child: Image.asset(
                                  "assets/image/hugeicons_money-bag-01.png",
                                  height: 50,
                                  width: 40,
                                ),
                              ),
                            ),
                            const Text(
                              "Loan\nRepayment",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
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
                        Column(
                          children: [
                            Container(
                              height: 70,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                // color: Theme.of(context)
                                //     .colorScheme
                                //     .primaryContainer
                              ),
                              child: Center(
                                child: Image.asset(
                                  "assets/image/ion_home-outline (1).png",
                                  height: 50,
                                  width: 40,
                                ),
                              ),
                            ),
                            const Text(
                              "Rent",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 70,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                // color: Theme.of(context)
                                //     .colorScheme
                                //     .primaryContainer
                              ),
                              child: Center(
                                child: Image.asset(
                                  "assets/image/ion_water-outline.png",
                                  height: 50,
                                  width: 40,
                                ),
                              ),
                            ),
                            const Text(
                              "Water",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 70,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                // color: Theme.of(context)
                                //     .colorScheme
                                //     .primaryContainer
                              ),
                              child: Center(
                                child: Image.asset(
                                  "assets/image/material-symbols_laptop-car-outline-sharp.png",
                                  height: 50,
                                  width: 40,
                                ),
                              ),
                            ),
                            const Text(
                              "Electricity",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 70,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                // color: Theme.of(context)
                                //     .colorScheme
                                //     .primaryContainer
                              ),
                              child: Center(
                                child: Image.asset(
                                  "assets/image/Group 1220.png",
                                  height: 50,
                                  width: 40,
                                ),
                              ),
                            ),
                            const Text(
                              "Cylinder",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 70,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                // color: Theme.of(context)
                                //     .colorScheme
                                //     .primaryContainer
                              ),
                              child: Center(
                                child: Image.asset(
                                  "assets/image/material-symbols_laptop-car-outline-sharp (1).png",
                                  height: 50,
                                  width: 40,
                                ),
                              ),
                            ),
                            const Text(
                              "Pospaid",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 70,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                // color: Theme.of(context)
                                //     .colorScheme
                                //     .primaryContainer
                              ),
                              child: Center(
                                child: Image.asset(
                                  "assets/image/material-symbols_laptop-car-outline-sharp (2).png",
                                  height: 50,
                                  width: 40,
                                ),
                              ),
                            ),
                            const Text(
                              "Broadband",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 70,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                // color: Theme.of(context)
                                //     .colorScheme
                                //     .primaryContainer
                              ),
                              child: Center(
                                child: Image.asset(
                                  "assets/image/bi_credit-card-2-front.png",
                                  height: 50,
                                  width: 40,
                                ),
                              ),
                            ),
                            const Text(
                              "Credit Card",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 70,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                // color: Theme.of(context)
                                //     .colorScheme
                                //     .primaryContainer
                              ),
                              child: Center(
                                child: Image.asset(
                                  "assets/image/Group 1222.png",
                                  height: 50,
                                  width: 40,
                                ),
                              ),
                            ),
                            const Text(
                              "Pipe Gas",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
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
                        Column(
                          children: [
                            Container(
                              height: 70,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                // color: Theme.of(context)
                                //     .colorScheme
                                //     .primaryContainer
                              ),
                              child: Center(
                                child: Image.asset(
                                  "assets/image/material-symbols_laptop-car-outline-sharp (1).png",
                                  height: 50,
                                  width: 40,
                                ),
                              ),
                            ),
                            const Text(
                              "Mobile\nRecharge",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 70,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                // color: Theme.of(context)
                                //     .colorScheme
                                //     .primaryContainer
                              ),
                              child: Center(
                                child: Image.asset(
                                  "assets/image/fast.png",
                                  height: 50,
                                  width: 40,
                                  color: HexColor("#05099F"),
                                ),
                              ),
                            ),
                            const Text(
                              "FASTag\n Recharge",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 70,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                // color: Theme.of(context)
                                //     .colorScheme
                                //     .primaryContainer
                              ),
                              child: Center(
                                child: Image.asset(
                                  "assets/image/game-icons_radar-dish.png",
                                  height: 50,
                                  width: 40,
                                ),
                              ),
                            ),
                            const Text(
                              "DTH",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 70,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                // color: Theme.of(context)
                                //     .colorScheme
                                //     .primaryContainer
                              ),
                              child: Center(
                                child: Image.asset(
                                  "assets/image/teenyicons_tv-outline.png",
                                  height: 50,
                                  width: 40,
                                ),
                              ),
                            ),
                            const Text(
                              "Cable TV",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
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
                        Column(
                          children: [
                            Container(
                              height: 70,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                // color: Theme.of(context)
                                //     .colorScheme
                                //     .primaryContainer
                              ),
                              child: Center(
                                child: Image.asset(
                                  "assets/image/mdi_donation-outline.png",
                                  height: 50,
                                  width: 40,
                                ),
                              ),
                            ),
                            const Text(
                              "Donate",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 70,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                // color: Theme.of(context)
                                //     .colorScheme
                                //     .primaryContainer
                              ),
                              child: Center(
                                child: Image.asset(
                                  "assets/image/material-symbols-light_folded-hands-outline.png",
                                  height: 50,
                                  width: 40,
                                ),
                              ),
                            ),
                            const Text(
                              "Devotion",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 70,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                // color: Theme.of(context)
                                //     .colorScheme
                                //     .primaryContainer
                              ),
                              child: Center(
                                child: Image.asset(
                                  "assets/image/twemoji_hindu-temple.png",
                                  height: 50,
                                  width: 40,
                                ),
                              ),
                            ),
                            const Text(
                              "Ram Mandir",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 70,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                // color: Theme.of(context)
                                //     .colorScheme
                                //     .primaryContainer
                              ),
                              child: Center(
                                child: Image.asset(
                                  "assets/image/solar_hand-heart-linear.png",
                                  height: 50,
                                  width: 40,
                                ),
                              ),
                            ),
                            const Text(
                              "Donate meal",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
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
                        Column(
                          children: [
                            Container(
                              height: 70,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                // color: Theme.of(context)
                                //     .colorScheme
                                //     .primaryContainer
                              ),
                              child: Center(
                                child: Image.asset(
                                  "assets/image/wpf_recurring-appointment.png",
                                  height: 50,
                                  width: 40,
                                ),
                              ),
                            ),
                            const Text(
                              "LIC/\n Insurance",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 70,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                // color: Theme.of(context)
                                //     .colorScheme
                                //     .primaryContainer
                              ),
                              child: Center(
                                child: Image.asset(
                                  "assets/image/ion_home-outline (2).png",
                                  height: 50,
                                  width: 40,
                                ),
                              ),
                            ),
                            const Text(
                              "Municipal Tax &\nServices",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 70,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                // color: Theme.of(context)
                                //     .colorScheme
                                //     .primaryContainer
                              ),
                              child: Center(
                                child: Image.asset(
                                  "assets/image/fluent-mdl2_recurring-event.png",
                                  height: 50,
                                  width: 40,
                                ),
                              ),
                            ),
                            const Text(
                              "Recurring \nDeposit",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 70,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                // color: Theme.of(context)
                                //     .colorScheme
                                //     .primaryContainer
                              ),
                              child: Center(
                                child: Image.asset(
                                  "assets/image/Group (1).png",
                                  height: 50,
                                  width: 40,
                                ),
                              ),
                            ),
                            const Text(
                              "NSP",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 70,
                                width: 60,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  // color: Theme.of(context)
                                  //     .colorScheme
                                  //     .primaryContainer
                                ),
                                child: Center(
                                  child: Image.asset(
                                    "assets/image/hugeicons_money-bag-01.png",
                                    height: 50,
                                    width: 40,
                                  ),
                                ),
                              ),
                              const Text(
                                "Loan\n Repayment",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
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
                        Column(
                          children: [
                            Container(
                              height: 70,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                // color: Theme.of(context)
                                //     .colorScheme
                                //     .primaryContainer
                              ),
                              child: Center(
                                child: Image.asset(
                                  "assets/image/pepicons-pencil_people.png",
                                  height: 50,
                                  width: 40,
                                ),
                              ),
                            ),
                            const Text(
                              "Clubs& \n Association",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 70,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                // color: Theme.of(context)
                                //     .colorScheme
                                //     .primaryContainer
                              ),
                              child: Center(
                                child: Image.asset(
                                  "assets/image/mdi_house-city-outline.png",
                                  height: 50,
                                  width: 40,
                                ),
                              ),
                            ),
                            const Text(
                              "Apartments",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 70,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                // color: Theme.of(context)
                                //     .colorScheme
                                //     .primaryContainer
                              ),
                              child: Center(
                                child: Image.asset(
                                  "assets/image/Group (2).png",
                                  height: 50,
                                  width: 40,
                                ),
                              ),
                            ),
                            const Text(
                              "Hospitals ",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 70,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                // color: Theme.of(context)
                                //     .colorScheme
                                //     .primaryContainer
                              ),
                              child: Center(
                                child: Image.asset(
                                  "assets/image/Frame (15).png",
                                  height: 50,
                                  width: 40,
                                ),
                              ),
                            ),
                            const Text(
                              "Buy FASTag",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 70,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                // color: Theme.of(context)
                                //     .colorScheme
                                //     .primaryContainer
                              ),
                              child: Center(
                                child: Image.asset(
                                  "assets/image/material-symbols_car-rental-outline.png",
                                  height: 50,
                                  width: 40,
                                ),
                              ),
                            ),
                            const Text(
                              "Rental",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 70,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                // color: Theme.of(context)
                                //     .colorScheme
                                //     .primaryContainer
                              ),
                              child: Center(
                                child: Image.asset(
                                  "assets/image/ph_device-mobile-thin.png",
                                  height: 50,
                                  width: 40,
                                ),
                              ),
                            ),
                            const Text(
                              "NCMC\nRecharge",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 70,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                // color: Theme.of(context)
                                //     .colorScheme
                                //     .primaryContainer
                              ),
                              child: Center(
                                child: Image.asset(
                                  "assets/image/lsicon_education-outline.png",
                                  height: 50,
                                  width: 40,
                                ),
                              ),
                            ),
                            const Text(
                              "Education\nFees",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 70,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                // color: Theme.of(context)
                                //     .colorScheme
                                //     .primaryContainer
                              ),
                              child: Center(
                                child: Image.asset(
                                  "assets/image/cil_speedometer.png",
                                  height: 50,
                                  width: 40,
                                ),
                              ),
                            ),
                            const Text(
                              "Prepaid Meter",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
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
