import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:wavexpay/core/provider/navbar/NavbarVisibilityProvider.dart';
import 'package:wavexpay/router/router.gr.dart';
import 'package:wavexpay/src/dashboard/widget/billandRehargeCard.dart';
import 'package:wavexpay/src/dashboard/widget/moneyTanferCard.dart';
import 'package:wavexpay/src/dashboard/widget/travelCardWidget.dart';
import 'package:wavexpay/src/dashboard/widget/viewAllbutton.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(() {
      final provider =
          Provider.of<NavbarVisibilityProvider>(context, listen: false);
      if (_scrollController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        provider.showNavbar();
      } else if (_scrollController.position.userScrollDirection ==
          ScrollDirection.forward) {
        provider.hideNavbar();
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverAppBar(
            expandedHeight: 400.h,
            pinned: true,
            backgroundColor: HexColor("#04076E"),
            leading: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: GestureDetector(
                onTap: () {
                  context.router.push(const ProfileandpayoneRoute());
                },
                child: const CircleAvatar(
                  radius: 10,
                ),
              ),
            ),
            title: Row(
              children: [
                const Text(
                  "Add Address",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                IconButton(
                  onPressed: () {
                    //context.router.push(const ProfileandpayoneRoute());
                  },
                  icon: Icon(Icons.arrow_drop_down, color: HexColor("#FFFFFF")),
                )
              ],
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                ),
                color: Colors.white,
                iconSize: 22.h,
              ),
              IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    "assets/image/walet.png",
                    height: 20.h,
                  )),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
              ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              background: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Image.asset(
                      "assets/image/Group 1496.png",
                      height: 270.h,
                      width: 270.w,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              color: HexColor("#04076E"),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.surface,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                // height: 1500.h,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
                          height: 60.h,
                          width: 216.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Theme.of(context).colorScheme.secondary,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 0.5,
                                blurRadius: 2,
                                offset: const Offset(0, 1),
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        "assets/image/Group 1209@2x.png",
                                        height: 10,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      const Text(
                                        "Credit Card-9685",
                                        style: TextStyle(
                                          color: Colors.blueGrey,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    height: 22.h,
                                    width: 44.w,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(16),
                                        border: Border.all(
                                          color: Colors.blueGrey,
                                        )),
                                    child: const Center(
                                      child: Text(
                                        "Pay",
                                        style: TextStyle(
                                            color: Colors.blueGrey,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Text(
                                "1200 due on Wed, 25 jan",
                                style: TextStyle(color: HexColor("#ED9191")),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 60.h,
                          width: 121.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Theme.of(context).colorScheme.secondary,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 0.5,
                                blurRadius: 2,
                                offset: const Offset(0, 1),
                              ),
                            ],
                          ),
                          child: const Center(
                            child: Text(
                              "My Bills",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 170.h,
                      child: PageView.builder(
                        itemCount: 3,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Container(
                                height: 150,
                                width: double.infinity,
                                color: HexColor("#05099F")),
                          );
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      //height: 150.h,
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.secondary,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 0.5,
                            blurRadius: 2,
                            offset: const Offset(0, 1),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Money Transfers",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              MoneyTransferCard(
                                  title: "Pay To \nContact",
                                  imagePath: "assets/image/contact.png",
                                  onTap: () {}),
                              MoneyTransferCard(
                                  title: "To Bank/\n UPI ID",
                                  imagePath: "assets/image/bank.png",
                                  onTap: () {}),
                              MoneyTransferCard(
                                  title: "Self \n Account",
                                  imagePath: "assets/image/selfAcc.png",
                                  onTap: () {}),
                              MoneyTransferCard(
                                  title: "Check \nBalance",
                                  imagePath: "assets/image/checkBal.png",
                                  onTap: () {}),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.secondary,
                          //color: HexColor("#CFCFEC"),

                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 0.5,
                              blurRadius: 2,
                              offset: const Offset(1, 1),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Bill & Recharge",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Viewallbutton(
                                  onpress: () {
                                    context.pushRoute(const BillRoute());
                                  },
                                )
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              BillandRechargeCard(
                                imagePath: "assets/image/recharge.png",
                                label: "Recharge",
                                onTap: () {},
                              ),
                              BillandRechargeCard(
                                  imagePath: "assets/image/credit.png",
                                  label: "Credit",
                                  onTap: () {}),
                              BillandRechargeCard(
                                  imagePath: "assets/image/elc2.png",
                                  label: "Electricity",
                                  onTap: () {}),
                              BillandRechargeCard(
                                  imagePath: "assets/image/home.png",
                                  label: "Rent",
                                  onTap: () {}),
                              // BillandRechargeCard(
                              //     imagePath: "assets/image/boardband2.png",
                              //     label: "Boardband",
                              //     onTap: () {}),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 160,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          TravelCardWidget(
                            title: "Travel",
                            travelOptions: const [
                              {
                                "imagePath": "assets/image/flight.png",
                                "label": "Flight"
                              },
                              {
                                "imagePath": "assets/image/bus.png",
                                "label": "Bus"
                              },
                              {
                                "imagePath": "assets/image/train.png",
                                "label": "Train"
                              },
                              {
                                "imagePath": "assets/image/hotel.png",
                                "label": "Hotels"
                              },
                            ],
                            onOptionTap: (label) {
                              log("Tapped on $label");
                            },
                          ),
                          TravelCardWidget(
                            title: "Travel Services",
                            travelOptions: const [
                              {
                                "imagePath": "assets/image/aircab.png",
                                "label": "Airport\nCabs"
                              },
                              {
                                "imagePath": "assets/image/suba.png",
                                "label": "Travel\nActivities"
                              },
                              {
                                "imagePath": "assets/image/logos_visa.png",
                                "label": "Visa2\nFly"
                              },
                              {
                                "imagePath": "assets/image/trav.png",
                                "label": "Travel\nInsurance"
                              },
                            ],
                            onOptionTap: (label) {
                              log("Tapped on $label");
                            },
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 36.h, // Use ScreenUtil to scale button height
                          width: 170.w,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor:
                                  WidgetStateProperty.all(HexColor("#FFFFFF")),
                              shadowColor: WidgetStateProperty.all(
                                  HexColor("#05099F")), // Shadow color
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
                              "Movie Ticket", maxLines: 1,
                              style: TextStyle(
                                fontSize: 15.sp,
                                color: Colors.black,
                              ), // Use ScreenUtil for font size
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 36.h, // Use ScreenUtil to scale button height
                          width: 175.w,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor: WidgetStateProperty.all(
                                Colors.white,
                              ),
                              shadowColor: WidgetStateProperty.all(
                                HexColor("#05099F"), // Shadow color
                              ),
                              elevation: WidgetStateProperty.all(
                                2.0, // Shadow elevation
                              ),
                              side: WidgetStateProperty.all(
                                BorderSide(
                                  color: HexColor("#05099F"), // Border color
                                  width: 2.0, // Border width
                                ),
                              ),
                            ),
                            child: Text(
                              "Event Ticket",
                              style: TextStyle(
                                fontSize: 15.sp,
                                color: Colors.black,
                              ), // Use ScreenUtil for font size
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 170.h,
                      // child: PageView.builder(
                      //   itemCount: 3,
                      //   scrollDirection: Axis.horizontal,
                      //   itemBuilder: (context, index) {
                      //     return Padding(
                      //       padding: const EdgeInsets.symmetric(vertical: 10),
                      //       child: Image.asset("assets/image/Frame 11969.png"),
                      //     );
                      //   },
                      // ),

                      child: CarouselSlider(
                          items: [Image.asset("assets/image/Frame 11969.png")],
                          options: CarouselOptions(
                            height: 400,
                            aspectRatio: 16 / 9,
                            viewportFraction: 0.8,
                            initialPage: 0,
                            enableInfiniteScroll: true,
                            reverse: false,
                            //autoPlay: true,
                            // autoPlayInterval: const Duration(seconds: 3),
                            //autoPlayAnimationDuration:
                            //   const Duration(milliseconds: 800),
                            autoPlayCurve: Curves.fastOutSlowIn,
                            enlargeCenterPage: true,
                            enlargeFactor: 0.3,
                            scrollDirection: Axis.horizontal,
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
