import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

ThemeData lightMode = ThemeData(
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(
      surface: HexColor("#FFFFFF"),
      primary: HexColor("#FFFFFF"),
      onPrimaryContainer: HexColor("#FFFFFF"),
      secondary: HexColor("#F0F0FF"),
    ));
ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    surface: HexColor("#0D0E34"),
    primary: HexColor("#3A3B59"),
    onPrimaryContainer: HexColor("#B5B5CE"),
    secondary: HexColor("#3A3B59"),
  ),
);
 
 
  // Switch(
          //   value: Provider.of<ThemeProvider>(context).themeData ==
          //       darkMode, // Check if dark mode is active
          //   onChanged: (value) {
          //     Provider.of<ThemeProvider>(context, listen: false)
          //         .toggleTheme(); // Toggle the theme
          //   },
          // ),