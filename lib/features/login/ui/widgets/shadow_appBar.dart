import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_text_styles.dart';

class ShadowAppBar extends StatelessWidget {
  const ShadowAppBar({
    super.key, required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80.h,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: AlignmentDirectional.topCenter ,
              end: AlignmentDirectional.bottomCenter,
              colors: [
                Colors.black.withOpacity(0.8),
                Colors.transparent,
              ]
          )
      ),
      child: Center(child:  Text(title,style: AppTextStyles.font18WhiteCairoMedium,)),
    );
  }
}
