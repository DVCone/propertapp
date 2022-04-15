import 'package:flutter/material.dart';
import 'utils/constants.dart';
import 'dart:ui';
import 'screens/landing_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    double screenWidth = window.physicalSize.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Property App',
      theme: ThemeData(
          primaryColor: colorWhite,
          colorScheme:
              ColorScheme.fromSwatch().copyWith(secondary: colorDarkBlue),
          textTheme: screenWidth < 500 ? textThemeSmall : textThemeDefault,
          fontFamily: "Montserrat"),
      home: const LandingPage(),
    );
  }
}
