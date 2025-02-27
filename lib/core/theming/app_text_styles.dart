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
  static var font14SecondaryBlackCairo;

  // --------------------- REGULAR Text Styles - w400 ---------------------
  static TextStyle get font10RegularMonserrat => GoogleFonts.montserrat(
    fontSize: 10.sp,
    fontWeight: AppFontWeights.regular,
  );

  static TextStyle get font10BlackCairoRegular => GoogleFonts.cairo(
    fontSize: 10.sp,
    color: AppColors.text,
    fontWeight: AppFontWeights.regular,
  );
  static TextStyle get font10BlackCairoMedium => GoogleFonts.cairo(
    fontSize: 10.sp,
    color: AppColors.text,
    fontWeight: AppFontWeights.medium,
  );
  static TextStyle get font10BlackRegularInter => GoogleFonts.inter(
    color: AppColors.text,
    fontSize: 10.sp,
    fontWeight: AppFontWeights.regular,
  );

  static TextStyle get font12PrimaryColorRegularCairo => GoogleFonts.cairo(
    fontSize: 12.sp,
    color: AppColors.primary,
    fontWeight: AppFontWeights.regular,
  );




  static TextStyle get font12BlackCairoRegular => GoogleFonts.cairo(
    fontSize: 12.sp,
    color: AppColors.text,
    fontWeight: AppFontWeights.regular,
  );


  static TextStyle get font12GrayCairoRegular => GoogleFonts.cairo(
    fontSize: 12.sp,
    color: AppColors.gray,
    fontWeight: AppFontWeights.regular,
  );





  static TextStyle get font14BlackRegularCairo => GoogleFonts.cairo(
    fontSize: 14.sp,
    color: AppColors.text,
    fontWeight: AppFontWeights.regular,
  );



  static TextStyle get font14BlackCairoRegular => GoogleFonts.cairo(
    fontSize: 14.sp,
    color: AppColors.text,
    fontWeight: AppFontWeights.regular,
  );

  static TextStyle get font16PrimaryColorRegularCairo => GoogleFonts.cairo(
    color: AppColors.primary,
    fontSize: 16.sp,
    fontWeight: AppFontWeights.regular,
  );

  static TextStyle get font16BTextRegularCairo => GoogleFonts.cairo(
    color: AppColors.text,
    fontSize: 16.sp,
    fontWeight: AppFontWeights.regular,
  );

  static TextStyle get font16WhiteRegularCairo => GoogleFonts.cairo(
    fontSize: 16.sp,
    color: Colors.white,
    fontWeight: AppFontWeights.regular,
  );




  static TextStyle get font20BlackRegularCairo => GoogleFonts.cairo(
    color: AppColors.text,
    fontSize: 20.sp,
    fontWeight: AppFontWeights.regular,
  );

  static TextStyle get font23BlackRegularCairo => GoogleFonts.cairo(
    color: AppColors.text,
    fontSize: 23.sp,
    fontWeight: AppFontWeights.regular,
  );

  // --------------------- MEDIUM Text Styles - w500 ---------------------


  static TextStyle get font12PrimaryColorMediumCairo => GoogleFonts.cairo(
    fontSize: 12.sp,
    color: AppColors.primary,
    fontWeight: AppFontWeights.medium,
  );

  static TextStyle get font12BlackMediumCairo => GoogleFonts.cairo(
    fontSize: 12.sp,
    color: AppColors.text,
    fontWeight: AppFontWeights.medium,
  );


  static TextStyle get font12BlackCairo => GoogleFonts.cairo(
    fontSize: 12.sp,
    color: AppColors.text,
    fontWeight: AppFontWeights.medium,
  );

  static TextStyle get font12WhiteCairo => GoogleFonts.cairo(
    fontSize: 12.sp,
    color: AppColors.background,
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

  static TextStyle get font16MediumMonserrat => GoogleFonts.montserrat(
    fontSize: 16.sp,
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



  static TextStyle get font16PrimaryColorMediumCairo => GoogleFonts.cairo(
    fontSize: 16.sp,
    color: AppColors.primary,
    fontWeight: AppFontWeights.medium,
  );

  static TextStyle get font18BlackMediumCairo => GoogleFonts.cairo(
    color: AppColors.text,
    fontSize: 18.sp,
    fontWeight: AppFontWeights.medium,
  );


  static TextStyle get font20BlackMediumCairo => GoogleFonts.cairo(
    fontSize: 20.sp,
    color: AppColors.text,
    fontWeight: AppFontWeights.medium,
  );


  static TextStyle get font18WhiteCairoMedium => GoogleFonts.cairo(
    fontSize: 18.sp,
    color: Colors.white,
    fontWeight: AppFontWeights.medium,
  );

  static TextStyle get font23MediumBlackCairo => GoogleFonts.cairo(
    fontSize: 23.sp,
    color: AppColors.text,
    fontWeight: AppFontWeights.medium,
  );

  static TextStyle get font28BlackMediumCairo => GoogleFonts.cairo(
    fontSize: 28.sp,
    color: AppColors.text,
    fontWeight: AppFontWeights.medium,
  );

  static TextStyle get font21BlackMediumCairo => GoogleFonts.cairo(
    fontSize: 21.sp,
    color: AppColors.text,
    fontWeight: AppFontWeights.medium,
  );
  static TextStyle get font36MediumBlackCairo => GoogleFonts.cairo(
    fontSize: 36.sp,
    color: AppColors.text,
    fontWeight: AppFontWeights.medium,
  );
  static TextStyle get font24MediumBlackCairo => GoogleFonts.cairo(
    fontSize: 24.sp,
    color: AppColors.text,
    fontWeight: AppFontWeights.medium,
  );
  static TextStyle get font20MediumBlackCairo => GoogleFonts.cairo(
    fontSize: 20.sp,
    color: AppColors.text,
    fontWeight: AppFontWeights.medium,
  );

  // --------------------- SEMI-BOLD Text Styles - w600 -------------------
  static TextStyle get font10WhiteSemiBoldCairo => GoogleFonts.cairo(
    fontSize: 10.sp,
    color: Colors.white,
    fontWeight: AppFontWeights.semiBold,
  );

  static TextStyle get font14BlackCairo => GoogleFonts.cairo(
    fontSize: 14.sp,
    color: AppColors.text,
    fontWeight: AppFontWeights.semiBold,
  );

  static TextStyle get font18BlackSemiBoldCairo => GoogleFonts.cairo(
    fontSize: 18.sp,
    color: AppColors.text,
    fontWeight: AppFontWeights.semiBold,
  );

  static TextStyle get font20BlackSemiBoldCairo => GoogleFonts.cairo(
    fontSize: 20.sp,
    color: AppColors.text,
    fontWeight: AppFontWeights.semiBold,
  );

  static TextStyle get font26BlackSemiBoldCairo => GoogleFonts.cairo(
    fontSize: 26.sp,
    color: AppColors.text,
    fontWeight: AppFontWeights.semiBold,
  );

  static TextStyle get font28BlackSemiBoldCairo => GoogleFonts.cairo(
    fontSize: 28.sp,
    color: AppColors.text,
    fontWeight: AppFontWeights.semiBold,
  );
  static TextStyle get font14BlackSemiBoldCairo => GoogleFonts.cairo(
    fontSize: 14.sp,
    color: AppColors.text,
    fontWeight: AppFontWeights.semiBold,
  );
  static TextStyle get font16BlackSemiBoldCairo => GoogleFonts.cairo(
    fontSize: 16.sp,
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
