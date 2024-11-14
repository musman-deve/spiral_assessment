import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spiral/core/utils/app_colors.dart';

class AppTextStyles {
  // Base TextStyle with default values
  static TextStyle baseTextStyle({
    double fontSize = 14.0,
    FontWeight fontWeight = FontWeight.normal,
    Color color = AppColors.blackText,
    double letterSpacing = 0.0,
    double height = 1,
  }) {
    return TextStyle(
      fontSize: fontSize.sp,
      fontWeight: fontWeight,
      color: color,
      letterSpacing: letterSpacing.sp,
      height: height.sp,
    );
  }

  // Predefined headline style
  static TextStyle headline({
    double fontSize = 26.0,
    FontWeight fontWeight = FontWeight.w900,
    Color color = AppColors.blackText,
  }) {
    return baseTextStyle(
      fontSize: fontSize.sp,
      fontWeight: fontWeight,
      color: color,
    );
  }

  // Predefined subtitle style
  static TextStyle title({
    double fontSize = 20.0,
    FontWeight fontWeight = FontWeight.w700,
    Color color = AppColors.blackText,
  }) {
    return baseTextStyle(
      fontSize: fontSize.sp,
      fontWeight: fontWeight,
      color: color,
    );
  }

  // Predefined subtitle style
  static TextStyle subtitle({
    double fontSize = 18.0,
    FontWeight fontWeight = FontWeight.w500,
    Color color = AppColors.blackText,
    double height = 1,
  }) {
    return baseTextStyle(
      fontSize: fontSize.sp,
      fontWeight: fontWeight,
      color: color,
      height: height.sp,
    );
  }

  // Predefined body text style
  static TextStyle body({
    double fontSize = 11.0,
    FontWeight fontWeight = FontWeight.w400,
    Color color = AppColors.blackText,
  }) {
    return baseTextStyle(
      fontSize: fontSize.sp,
      fontWeight: fontWeight,
      color: color,
    );
  }
}
