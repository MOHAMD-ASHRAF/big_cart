import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_text_styles.dart';

class DetailsItemTextWidget extends StatelessWidget {
  const DetailsItemTextWidget({
    super.key,
    required this.title,
    required this.value,
  });

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal:16.w ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: AppTextStyles.font15WhiteCairoMedium),
          Text(value, style: AppTextStyles.font14BlackSemiBoldCairo),
        ],
      ),
    );
  }
}