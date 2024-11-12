import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wavexpay/src/auth_module/LoginScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
     ScreenUtil.init(
      context,
      designSize: const Size(375, 812), // Design size (base size) for the app
      minTextAdapt: true, // Enables text scaling
      splitScreenMode: true, // Enables multi-screen scaling (for tablets)
    );
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:LoginScreen()
    );
  }
}

