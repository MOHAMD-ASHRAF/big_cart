// Date: 29/9/2024
// By: Youssef Ashraf, Nada Mohammed, Mohammed Ashraf
// Last update: 29/9/2024
// this shared switch button in all app
import 'package:big_cart/bigCart_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../theming/app_colors.dart';


class CustomSwitchButton extends StatelessWidget {
  const CustomSwitchButton({
    super.key,
    required this.value,
    required this.onChanged,
  });

  final bool value;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return FlutterSwitch(
      width: 45.w,
      height: 25.h,
      activeColor: AppColors.primaryDark,
      inactiveColor: AppColors.gray,
      value: value,
      onToggle: onChanged,

      /*  width: context.isTablett ? (context.isPortrait ? 70.w : 65.w) : 40.w,
      height: context.isTablett ? (context.isPortrait ? 30.h : 35.h) : 30.h, */
    );
  }
}
