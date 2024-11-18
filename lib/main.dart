import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:wavexpay/app/app.dart';
import 'package:wavexpay/core/provider/theme/themeProvider.dart';


void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: MyApp(),
    ),
  );
}
