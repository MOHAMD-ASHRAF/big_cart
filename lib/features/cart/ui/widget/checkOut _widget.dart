import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_text_styles.dart';
import '../../../../core/widgets/app_text_button.dart';
class CheckOutWidget extends StatelessWidget {
  const CheckOutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 16.h),
      width: double.infinity,
      height: 180.h,
      color: Colors.white,
      child:SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Text('Subtotal', style: AppTextStyles.font12grayCairoMedium,),
                const Spacer(),
                Text('200 EGP', style: AppTextStyles.font12grayCairoMedium,),
              ],
            ),
            SizedBox(height: 8.h,),
            Row(
              children: [
                Text('Shipping charges', style: AppTextStyles.font12grayCairoMedium,),
                const Spacer(),
                Text('\$1.6', style: AppTextStyles.font12grayCairoMedium,),
              ],
            ),
            SizedBox(height: 12.h,),
            Divider(color: AppColors.primary,),
            Row(
              children: [
                Text('Total', style: AppTextStyles.font18BlackSemiBoldCairo,),
                const Spacer(),
                Text('201.6 EGP', style: AppTextStyles.font18BlackSemiBoldCairo,),
              ],
            ),
            SizedBox(height: 16.h,),

            AppTextButton(
              buttonText: 'Checkout',
              onPressed: () {
                // context.pushNamed(Routes.navigationPage);
              },
            ),
          ],

        ),
      ),
    );
  }
}
