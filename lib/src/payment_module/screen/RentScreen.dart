import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:auto_route/auto_route.dart';
import 'package:wavexpay/src/dashboard/widget/actionCard.dart';

@RoutePage()
class RentScreen extends StatelessWidget {
  const RentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Rent",
          style: TextStyle(color: Colors.white, fontSize: 20.sp),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF04076E),
        leading: IconButton(
          onPressed: () {
          //  context.router.pop();
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
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: Column(
          children: [
            Image.asset("assets/image/sale.png"),
            SizedBox(height: 10.h),
           SizedBox(
              height: 10.h,
            ),
            Container(
              //height: 300,
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white, // Background color for TextField
                borderRadius: BorderRadius.circular(20), // Rounded corners
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Why pay rent on WAVEXPAY?",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                    
Image.asset("assets/image/wallet with banknots credit card and coins.png",height:50.h),
const  SizedBox(width:10),
const Column(
     crossAxisAlignment: CrossAxisAlignment.start,
   children:[
  Text("Select a property payment"   ,style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),),
  Text("Choose your property and start paying all of the above\n under one roof"  , style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400),)
])
                  ]),
const SizedBox(height:10),
     Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                    
Image.asset("assets/image/money and phone.png",height:50.h),
 const SizedBox(width:10),
const Column(
     crossAxisAlignment: CrossAxisAlignment.start,
   children:[
  Text("Debit Card or Credit Card"   ,style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),),
  Text("Choose a mode of payment based on your convenience\n every month"  , style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400),)
])
                  ]),  
                 const SizedBox(height:10),
                  Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                    
         Image.asset("assets/image/Payment Successful.png",height:50.h),
const SizedBox(width:10),
const Column(
     crossAxisAlignment: CrossAxisAlignment.start,
   children:[
  Text("Never miss a payment"   ,style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),),
  Text("Get monthly reminders on your wavexpay app to pay \n rent."  , style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400),)
])
                  ]),           
                  
                ],
              ),
            ),
            SizedBox(height:10),
             Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                // height: 170.h,
                padding: const EdgeInsets.symmetric(vertical: 10),
                width: double.infinity,
decoration: BoxDecoration(
                color: Colors.white, // Background color for TextField
                borderRadius: BorderRadius.circular(20), // Rounded corners
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
                            "Select a property payment",
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
                            title: "Home/\nShop Rent",
                            imagePath:
                                "assets/image/ion_home-outline (1).png",
                            onTap: () {}),
                        ActionCard(
                            title: "Broker\nPayment",
                            imagePath:
                                "assets/image/material-symbols-light_folded-hands-outline.png",
                            onTap: () {}),
                        ActionCard(
                            title: "Property \nDeposit",
                            imagePath: "assets/image/hugeicons_money-bag-01.png",
                            onTap: () {}),
                        ActionCard(
                            title: "Society\nMaintenance",
                            imagePath:
                                "assets/image/ion_home-outline (2).png",
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