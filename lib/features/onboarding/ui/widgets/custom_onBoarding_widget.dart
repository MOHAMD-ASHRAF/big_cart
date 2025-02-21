import 'package:big_cart/core/constants/app_assets.dart';
import 'package:big_cart/core/helpers/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_text_styles.dart';

class CustomOnBoardingWidget extends StatelessWidget {
  CustomOnBoardingWidget(
      {super.key,
      this.showLogo = false,
      required this.heading1,
       this.heading2,
      required this.description,
      required this.backGroundImage});

  bool showLogo;
  String heading1;
  String? heading2;
  String description;
  String backGroundImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(alignment: AlignmentDirectional.topCenter, children: [
        Image.asset(
          backGroundImage,
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Padding(
          padding: EdgeInsets.only(top: 70.h,right: 22.w,left: 22.w),
          child: Column(
            children: [
              Text(
                heading1,
                textAlign: TextAlign.center,
                style: AppTextStyles.font24TextBoldCairo,
              ),
              showLogo
                  ? Image.asset(
                      AppAssets.logo,
                      width: 100.w,
                    )
                  : Text(
                      heading2!,
                      textAlign: TextAlign.center,
                      style: AppTextStyles.font24TextBoldCairo,
                    ),
              verticalSpace(29),
              Text(
                description,
                textAlign: TextAlign.center,
                style: AppTextStyles.font14GrayCairoMedium,
              ),
            ],
          ),
        )
      ]),
    );
  }
}
