import 'package:flutter/material.dart';

// Color Assets
const colorBlack = Color.fromRGBO(48, 47, 48, 1.0);
const colorGrey = Color.fromRGBO(141, 141, 141, 1.0);
const colorWhite = Colors.white;
const colorDarkBlue = Color.fromRGBO(20, 25, 45, 1.0);

// Text Font Assets in default
const TextTheme textThemeDefault = TextTheme(
  // Headline text
  headline1:
      TextStyle(color: colorBlack, fontWeight: FontWeight.w700, fontSize: 26),
  headline2:
      TextStyle(color: colorBlack, fontWeight: FontWeight.w700, fontSize: 22),
  headline3:
      TextStyle(color: colorBlack, fontWeight: FontWeight.w700, fontSize: 20),
  headline4:
      TextStyle(color: colorBlack, fontWeight: FontWeight.w700, fontSize: 16),
  headline5:
      TextStyle(color: colorBlack, fontWeight: FontWeight.w700, fontSize: 14),
  headline6:
      TextStyle(color: colorBlack, fontWeight: FontWeight.w700, fontSize: 12),
  // Body text
  bodyText1: TextStyle(
      color: colorBlack,
      fontWeight: FontWeight.w500,
      fontSize: 14,
      height: 1.5),
  bodyText2: TextStyle(
      color: colorGrey, fontWeight: FontWeight.w500, fontSize: 14, height: 1.5),
  // Subtitle text
  subtitle1: TextStyle(
    color: colorBlack,
    fontWeight: FontWeight.w400,
    fontSize: 12,
  ),
  subtitle2: TextStyle(
    color: colorGrey,
    fontWeight: FontWeight.w400,
    fontSize: 12,
  ),
);

// Text Font Assets in small
const TextTheme textThemeSmall = TextTheme(
  // Headline text
  headline1:
      TextStyle(color: colorBlack, fontWeight: FontWeight.w700, fontSize: 22),
  headline2:
      TextStyle(color: colorBlack, fontWeight: FontWeight.w700, fontSize: 20),
  headline3:
      TextStyle(color: colorBlack, fontWeight: FontWeight.w700, fontSize: 18),
  headline4:
      TextStyle(color: colorBlack, fontWeight: FontWeight.w700, fontSize: 14),
  headline5:
      TextStyle(color: colorBlack, fontWeight: FontWeight.w700, fontSize: 12),
  headline6:
      TextStyle(color: colorBlack, fontWeight: FontWeight.w700, fontSize: 10),
  // Body text
  bodyText1: TextStyle(
      color: colorBlack,
      fontWeight: FontWeight.w500,
      fontSize: 12,
      height: 1.5),
  bodyText2: TextStyle(
      color: colorGrey, fontWeight: FontWeight.w500, fontSize: 12, height: 1.5),
  // Subtitle text
  subtitle1: TextStyle(
    color: colorBlack,
    fontWeight: FontWeight.w400,
    fontSize: 10,
  ),
  subtitle2: TextStyle(
    color: colorGrey,
    fontWeight: FontWeight.w400,
    fontSize: 10,
  ),
);
