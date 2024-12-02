import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

@RoutePage()
class Tire2Screen extends StatefulWidget {
  const Tire2Screen({super.key});

  @override
  State<Tire2Screen> createState() => _Tire2ScreenState();
}

class _Tire2ScreenState extends State<Tire2Screen> {
  bool isChecked = false;
  final TextEditingController houseController = TextEditingController();
  final TextEditingController roadController = TextEditingController();
  final TextEditingController landmarkController = TextEditingController();
  final TextEditingController gstController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Tire2",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.sp)),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Add Address",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20.spMin),
                  ),
                ],
              ),
            ),
            // Email Field
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextFormField(
                controller: houseController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter your House/ Flat /Apartment";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  labelText: "House/ Flat /Apartment",
                  labelStyle: const TextStyle(color: Colors.black),
                  floatingLabelBehavior: FloatingLabelBehavior
                      .always, // Makes label float on focus
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade400),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  //fillColor: Colors.grey[200],
                  filled: true,
                ),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.h),
              child: TextFormField(
                controller: roadController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter your Road/ Street";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  labelText: "Road/ Street",
                  labelStyle: const TextStyle(color: Colors.black),
                  floatingLabelBehavior: FloatingLabelBehavior
                      .always, // Makes label float on focus
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade400),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  //fillColor: Colors.grey[200],
                  filled: true,
                ),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.h),
              child: TextFormField(
                // controller: emailController,
                controller: landmarkController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter your Landmark";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  labelText: "Landmark",
                  labelStyle: const TextStyle(color: Colors.black),
                  floatingLabelBehavior: FloatingLabelBehavior
                      .always, // Makes label float on focus
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade400),
                    borderRadius: BorderRadius.circular(30.sp),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(30.sp),
                  ),
                  //fillColor: Colors.grey[200],
                  filled: true,
                ),
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Save As",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.sp),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 30.h,
                  width: 90.w,
                  decoration: BoxDecoration(
                    border: Border.all(color: HexColor("#05099F")),
                    borderRadius: BorderRadius.circular(30.h),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.home_outlined,
                        color: HexColor("#05099F"),
                      ),
                      Text(
                        'Home',
                        style: TextStyle(color: HexColor("#05099F")),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 30.h,
                  width: 90.w,
                  decoration: BoxDecoration(
                    border: Border.all(color: HexColor("#05099F")),
                    borderRadius: BorderRadius.circular(30.h),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.work_outline,
                        color: HexColor("#05099F"),
                      ),
                      Text(
                        'Work',
                        style: TextStyle(color: HexColor("#05099F")),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 30.h,
                  width: 90.w,
                  decoration: BoxDecoration(
                    border: Border.all(color: HexColor("#05099F")),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        color: HexColor("#05099F"),
                      ),
                      Text(
                        'Other',
                        style: TextStyle(color: HexColor("#05099F")),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Checkbox(
                  activeColor: HexColor("#05099F"),
                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value ?? false;
                    });
                  },
                ),
                const Text("Mark as your default address")
              ],
            ),
            SizedBox(
              height: 5.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Add GST",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.sp),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.h),
              child: TextFormField(
                controller: gstController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter your Landmark";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  labelText: "GST Number",
                  labelStyle: const TextStyle(color: Colors.black),
                  floatingLabelBehavior: FloatingLabelBehavior
                      .always, // Makes label float on focus
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade400),
                    borderRadius: BorderRadius.circular(30.sp),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(30.sp),
                  ),
                  //fillColor: Colors.grey[200],
                  filled: true,
                ),
              ),
            ),
            SizedBox(
              height: 259.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "CANCEL",
                      style: TextStyle(
                          color: HexColor("#05099F"),
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(
                        15.h), // Set the desired border radius
                    child: SizedBox(
                      width: 100.w,
                      height: 40.h,
                      child: FloatingActionButton(
                        backgroundColor: HexColor("#05099F"),
                        onPressed: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) => const LoginScreen()),
                          // );
                      //    context.router.push( Tire2screen());
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              20.h), // Border radius for the button
                        ),
                        child: const Text(
                          "NEXT",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
