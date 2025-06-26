import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/app_colors.dart';
import '../theming/app_text_styles.dart';

class CounterWidget extends StatelessWidget {
  const CounterWidget({super.key, required this.counter});

  final int counter;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: null,
          child: const Icon(
            Icons.add,
            color: AppColors.primaryDark,
          ),
        ),
        SizedBox(
          height: 8.h,
        ),
        Text(
          '$counter',
          style: AppTextStyles.font16BlackCairoMedium,
        ),
        SizedBox(
          height: 8.h,
        ),
        GestureDetector(
          onTap: null,
          child: const Icon(
            Icons.remove,
            color: AppColors.primaryDark,
          ),
        )
      ],
    );
  }
}
