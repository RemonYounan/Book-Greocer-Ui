import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

const primaryColor = Color(0xff5ABD8C);
const secondaryColor = Color(0xffAFDFC7);
const dotIndicatorColor = Color(0x405ABD8C);
const lightBlack = Color(0xff212121);
const white = Colors.white;
const grey = Color(0xffAFDFC7);

final appTheme = ThemeData(
  primaryColor: primaryColor,
  scaffoldBackgroundColor: Colors.white,
  fontFamily: 'Sf Pro Rounded',
  appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0,
      iconTheme: IconThemeData(color: primaryColor),
      titleTextStyle: TextStyle(color: Colors.black)),
  checkboxTheme: CheckboxThemeData(
      side: BorderSide(color: const Color(0xff000000).withOpacity(.2)),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      fillColor: MaterialStateProperty.resolveWith<Color>((states) {
        if (states.contains(MaterialState.disabled)) {
          return Colors.white;
        }
        return primaryColor;
      })),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: const Color(0xffEFEFEF).withOpacity(.5),
    hintStyle: TextStyle(
      fontSize: 11.sp,
      color: const Color(0xff212121).withOpacity(.5),
    ),
    border: OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(20),
    ),
  ),
  textTheme: TextTheme(
    // for Title in onBoarding page
    headlineLarge: TextStyle(
      fontSize: 30.sp,
      fontWeight: FontWeight.w500,
      color: primaryColor,
    ),
    // ...
    headlineMedium: TextStyle(
      fontSize: 26.sp,
      fontWeight: FontWeight.w500,
      color: primaryColor,
    ),
    // ...
    headlineSmall: TextStyle(
      fontSize: 13.sp,
      fontWeight: FontWeight.w300,
      color: primaryColor.withOpacity(.75),
    ),
    // ...
    titleLarge: TextStyle(
      fontSize: 20.sp,
      fontWeight: FontWeight.bold,
    ),
    // ...
    titleMedium: TextStyle(
      fontSize: 13.sp,
      fontWeight: FontWeight.w500,
    ),
    // for text below textfiled
    titleSmall: TextStyle(
      fontSize: 10.sp,
      fontWeight: FontWeight.w300,
      color: lightBlack.withOpacity(.5),
    ),
    labelLarge: TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.w500,
    ),
    // ...
    labelMedium: TextStyle(
      fontSize: 13.sp,
      fontWeight: FontWeight.w300,
      color: lightBlack.withOpacity(.75),
    ),
    labelSmall: TextStyle(
      fontSize: 12.sp,
      fontWeight: FontWeight.w400,
      // color: const Color(0xff000000).withOpacity(.75),
    ),
    //
    bodyLarge: TextStyle(
      fontSize: 22.sp,
      fontWeight: FontWeight.w600,
      color: lightBlack.withOpacity(.75),
    ),
    // for profile Name
    bodyMedium: TextStyle(
      fontSize: 22.sp,
      fontWeight: FontWeight.bold,
      color: lightBlack.withOpacity(.5),
    ),

    // ...
    bodySmall: TextStyle(
      fontSize: 10.sp,
      fontWeight: FontWeight.w300,
      color: lightBlack.withOpacity(.5),
    ),
  ),
);
