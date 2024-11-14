import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:wavexpay/core/provider/theme/themeProvider.dart';
import 'package:wavexpay/router/router.dart';
import 'package:wavexpay/src/dashboard/screen/DashboardScreen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  final _appRouter = AppRouter();
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      context,
      designSize: const Size(375, 812), // Design size (base size) for the app
      minTextAdapt: true, // Enables text scaling
      splitScreenMode: true, // Enables multi-screen scaling (for tablets)
    );
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: Provider.of<ThemeProvider>(context).themeData,
      routerConfig: _appRouter.config(),
    );
  }
}
