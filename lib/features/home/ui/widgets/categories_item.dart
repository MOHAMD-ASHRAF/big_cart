import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_text_styles.dart';

class CategoriesItem extends StatelessWidget {
  const CategoriesItem({
    super.key,
    required this.title,
    required this.color,
    required this.image,
  });
  final String title;
  final Color color;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(12.w),
          width: 52.w,
          height: 52.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(100.r)),
            color: color,
          ),
          child: SvgPicture.asset(image),
        ),
        SizedBox(height: 8.h),
        Text(
          title,
          style: AppTextStyles.font16GrayCairoMedium,
        )
      ],
    );
  }
}
