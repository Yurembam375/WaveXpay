import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:wavexpay/app/app.dart';
import 'package:wavexpay/core/provider/navbar/NavbarVisibilityProvider.dart';
import 'package:wavexpay/core/provider/theme/themeProvider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
        ChangeNotifierProvider(create: (_) => NavbarVisibilityProvider()),
      ],
      child: MyApp(),
    ),
  );
}
