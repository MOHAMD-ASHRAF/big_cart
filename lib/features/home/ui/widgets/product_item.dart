import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_text_styles.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        color: AppColors.moreLightGray2,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 2.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(8.r),
                      topLeft: Radius.circular(8.r)),
                  color: Colors.greenAccent,
                ),
                child: const Text('new'),
              ),
              const Spacer(),
              Padding(
                padding: EdgeInsets.only(right: 8.w, top: 4.h),
                child: Icon(
                  Icons.favorite,
                  color: Colors.red,
                  size: 24.sp,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 4.h,
          ),
          Image(
            image: const AssetImage(AppAssets.offerImage),
            height: 100.h,
            width: 100.w,
          ),
          Text(
            '9.90',
            style: AppTextStyles.font12GreenCairo,
          ),
          Text(
            'Product name',
            style: AppTextStyles.font16BlackCairoMedium,
          ),
          Text(
            '5.0 lbs',
            style: AppTextStyles.font14GrayCairoMedium,
          ),
          Divider(
            color: AppColors.primary,
            thickness: 1.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(AppAssets.cart, height: 16.h),
              SizedBox(width: 6.w),
              Text(
                'Add to cart',
                style: AppTextStyles.font14BlackSemiBoldCairo,
              )
            ],
          ),
          SizedBox(
            height: 8.h,
          ),
        ],
      ),
    );
  }
}
