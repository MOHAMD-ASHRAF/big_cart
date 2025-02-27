import 'package:big_cart/core/constants/app_assets.dart';
import 'package:big_cart/core/theming/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../helpers/spacing.dart';
import '../theming/app_colors.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton({
    super.key,
    this.borderRadius,
    this.backGroundColor,
    this.gradient,
    this.horizontalPadding,
    this.verticalPadding,
    this.buttonWidth,
    this.buttonHeight,
    required this.buttonText,
    this.textStyle,
    this.image,
    required this.onPressed,
  });

  final double? borderRadius;
  final Color? backGroundColor;
  final Gradient? gradient;
  final double? horizontalPadding;
  final double? verticalPadding;
  final double? buttonWidth;
  final double? buttonHeight;
  final String buttonText;
  final TextStyle? textStyle;
  final VoidCallback onPressed;
  final String? image;

  /// Default gradient
  Gradient get _defaultGradient => LinearGradient(
    colors: [AppColors.primary, AppColors.primaryDark], // Example gradient
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: backGroundColor == null ? (gradient ?? _defaultGradient) : null,
        color: backGroundColor, // Apply color only if explicitly provided
        borderRadius: BorderRadius.circular(borderRadius ?? 16.0),
      ),
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.transparent),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 16.0),
            ),
          ),
          padding: MaterialStateProperty.all<EdgeInsets>(
            EdgeInsets.symmetric(
              horizontal: horizontalPadding?.w ?? 12.w,
              vertical: verticalPadding?.h ?? 14.h,
            ),
          ),
          fixedSize: MaterialStateProperty.all(
            Size(buttonWidth?.w ?? double.maxFinite, buttonHeight ?? 50.h),
          ),
        ),
        onPressed: onPressed,
        child: image != null
            ? Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              image!,
              width: 20.w,
              height: 20.h,
            ),
            horizontalSpace(10.w),
            Text(
              buttonText,
              style: textStyle ?? AppTextStyles.font16WhiteCairoMedium,
            ),
          ],
        )
            : Center(
          child: Text(
            buttonText,
            style: textStyle ?? AppTextStyles.font16WhiteCairoMedium,
          ),
        ),
      ),
    );
  }
}


