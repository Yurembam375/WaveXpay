import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

@RoutePage()
class Transectionscreen extends StatefulWidget {
  const Transectionscreen({super.key});

  @override
  State<Transectionscreen> createState() => _TransectionscreenState();
}

class _TransectionscreenState extends State<Transectionscreen> {
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
                onPressed: () {},
                icon: Icon(Icons.arrow_drop_down, color: HexColor("#FFFFFF")),
              )
            ],
          ),
          backgroundColor: HexColor("#1315A3"),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.wallet,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications,
                color: Colors.white,
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Container(
              height: 200.h,
              color: HexColor("#1315A3"),
            )
          ],
        ));
  }
}
