// Date: 29/9/2024
// By: Youssef Ashraf, Nada Mohammed, Mohammed Ashraf
// Last update: 29/9/2024
// Objectives: This file is responsible for providing the app text styles that are used in the app.

import 'package:big_cart/core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_font_weights.dart';


abstract class AppTextStyles {

  /// --------------------- REGULAR Text Styles - w400 ---------------------


  static TextStyle get font10BlackCairoMedium => GoogleFonts.cairo(
    fontSize: 10.sp,
    color: AppColors.text,
    fontWeight: AppFontWeights.medium,
  );


  static TextStyle get font12GrayCairoRegular => GoogleFonts.cairo(
    fontSize: 12.sp,
    color: AppColors.gray,
    fontWeight: AppFontWeights.regular,
  );




  /// --------------------- MEDIUM Text Styles - w500 ---------------------


  static TextStyle get font12GreenCairo => GoogleFonts.cairo(
    fontSize: 12.sp,
    color: AppColors.primaryDark,
    fontWeight: AppFontWeights.medium,
  );

  static TextStyle get font12GreenCairoMedium => GoogleFonts.cairo(
    fontSize: 12.sp,
    color: AppColors.primaryDark,
    fontWeight: AppFontWeights.medium,
  );

  static TextStyle get font12grayCairoMedium => GoogleFonts.cairo(
    fontSize: 12.sp,
    color: AppColors.gray,
    fontWeight: AppFontWeights.medium,
  );

  static TextStyle get font14GrayCairoMedium => GoogleFonts.cairo(
    fontSize: 14.sp,
    color: AppColors.gray,
    fontWeight: AppFontWeights.medium,
  );

  static TextStyle get font14WhiteCairoMedium => GoogleFonts.cairo(
    fontSize: 14.sp,
    color: Colors.white,
    fontWeight: AppFontWeights.medium,
  );


  static TextStyle get font16BlackCairoMedium => GoogleFonts.cairo(
    fontSize: 16.sp,
    color: AppColors.text,
    fontWeight: AppFontWeights.medium,
  );

  static TextStyle get font16GrayCairoMedium => GoogleFonts.cairo(
    fontSize: 16.sp,
    color: AppColors.gray,
    fontWeight: AppFontWeights.medium,
  );

  static TextStyle get font16WhiteCairoMedium => GoogleFonts.cairo(
    fontSize: 16.sp,
    color: Colors.white,
    fontWeight: AppFontWeights.medium,
  );

  static TextStyle get font16BlueCairoMedium => GoogleFonts.cairo(
    fontSize: 16.sp,
    color: Colors.blue,
    fontWeight: AppFontWeights.medium,
  );



  static TextStyle get font18WhiteCairoMedium => GoogleFonts.cairo(
    fontSize: 18.sp,
    color: Colors.white,
    fontWeight: AppFontWeights.medium,
  );



  /// --------------------- SEMI-BOLD Text Styles - w600 -------------------



  static TextStyle get font18BlackSemiBoldCairo => GoogleFonts.cairo(
    fontSize: 18.sp,
    color: AppColors.text,
    fontWeight: AppFontWeights.semiBold,
  );
  static TextStyle get font18PrimaryDarkSemiBoldCairo => GoogleFonts.cairo(
    fontSize: 18.sp,
    color: AppColors.primaryDark,
    fontWeight: AppFontWeights.semiBold,
  );

  static TextStyle get font20BlackSemiBoldCairo => GoogleFonts.cairo(
    fontSize: 20.sp,
    color: AppColors.text,
    fontWeight: AppFontWeights.semiBold,
  );



  static TextStyle get font14BlackSemiBoldCairo => GoogleFonts.cairo(
    fontSize: 14.sp,
    color: AppColors.text,
    fontWeight: AppFontWeights.semiBold,
  );

  // --------------------- BOLD Text Styles - w700 -----------------------

  static TextStyle get font24TextBoldCairo => GoogleFonts.cairo(
    fontSize: 24.sp,
    color: AppColors.text,
    fontWeight: AppFontWeights.bold,
  );



}
