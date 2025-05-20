import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_text_styles.dart';

class CategoriesTextWidget extends StatelessWidget {
  const CategoriesTextWidget({
    super.key,
    required this.title,
    this.onTap,
  });

  final String title;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(
        title,
        style: AppTextStyles.font18BlackSemiBoldCairo,
      ),
      GestureDetector(
        onTap: onTap,
        child: Icon(
          Icons.arrow_forward_ios,
          color: AppColors.gray,
          size: 16.sp,
        ),
      )
    ]);
  }
}
