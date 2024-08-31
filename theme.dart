import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:coffee_app_ui/constants/colors.dart';

class AppTheme {
  static final ThemeData appTheme = ThemeData(
    dialogBackgroundColor: Color.fromARGB(255, 92, 209, 252),
    scaffoldBackgroundColor: Color.fromARGB(255, 125, 210, 238),
    textTheme: darkTextTheme,
  );

  static final TextTheme darkTextTheme = TextTheme(
    headlineLarge: _headline1, // Replacing headline1 with headlineLarge
    headlineMedium: _headline2, // Replacing headline2 with headlineMedium
    headlineSmall: _headline3, // Replacing headline3 with headlineSmall
    titleLarge: _headline4, // Replacing headline4 with titleLarge
    titleMedium: _headline5, // Replacing headline5 with titleMedium
    titleSmall: _headline6, // Replacing headline6 with titleSmall
  );

  static final TextStyle _headline1 = TextStyle(
    fontFamily: "Poppins",
    fontWeight: FontWeight.bold,
    color: AppColors.white,
    fontSize: 35.sp,
  );

  static final TextStyle _headline2 = TextStyle(
    fontFamily: "Poppins",
    color: AppColors.white,
    fontWeight: FontWeight.w400,
    fontSize: 20.sp,
  );

  static final TextStyle _headline3 = TextStyle(
    fontFamily: "Poppins",
    color: AppColors.white,
    fontWeight: FontWeight.bold,
    fontSize: 18.sp,
  );

  static final TextStyle _headline4 = TextStyle(
    fontFamily: "Poppins",
    color: AppColors.white,
    fontWeight: FontWeight.w500,
    fontSize: 16.sp,
  );

  static final TextStyle _headline5 = TextStyle(
    fontFamily: "Poppins",
    color: AppColors.textColor,
    fontWeight: FontWeight.normal,
    fontSize: 14.sp,
  );

  static final TextStyle _headline6 = TextStyle(
    fontFamily: "Poppins",
    color: AppColors.textColor,
    fontWeight: FontWeight.normal,
    fontSize: 10.sp,
    letterSpacing: 1.3,
  );
}
