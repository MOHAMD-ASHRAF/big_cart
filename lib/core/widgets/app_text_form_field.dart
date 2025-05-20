import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/app_colors.dart';
import '../theming/app_text_styles.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField(
      {super.key,
      this.contentPadding,
      this.focusedBorder,
      this.enabledBorder,
      this.inputTextStyle,
      this.hintStyle,
      required this.hintText,
      this.isObscureText,
      this.suffixIcon,
      this.backGroundColor,
      this.controller,
      required this.validator});

  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String hintText;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Color? backGroundColor;
  final TextEditingController? controller;
  final Function(String?) validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        isDense: true,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(vertical: 18.h, horizontal: 20.w),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
                borderSide: const BorderSide(
                  color: AppColors.primary,
                  width: 1.3,
                ),
                borderRadius: BorderRadius.circular(16)),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
                borderSide: const BorderSide(
                  color: AppColors.primaryLight,
                  width: 1.3,
                ),
                borderRadius: BorderRadius.circular(16)),
        errorBorder:  OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.red,
              width: 1.3,
            ),
            borderRadius: BorderRadius.circular(16)),
          focusedErrorBorder:  OutlineInputBorder(
              borderSide: const BorderSide(
                color: AppColors.primaryLight,
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(16)),
        hintStyle: hintStyle ?? AppTextStyles.font10BlackCairoMedium,
        hintText: hintText,
        suffixIcon: suffixIcon,
        fillColor: backGroundColor ?? AppColors.primaryLight,
        filled: true,
      ),
      obscureText: isObscureText ?? false,
      style: AppTextStyles.font10BlackCairoMedium,
      validator: (value){
        return validator(value);
      }
    );
  }
}
