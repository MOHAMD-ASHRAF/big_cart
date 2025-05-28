import 'package:big_cart/core/constants/app_assets.dart';
import 'package:big_cart/core/widgets/app_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_text_styles.dart';
import '../widgets/quantity_product_widget.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Top Image Stack
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 350.h,
                  decoration: const BoxDecoration(
                    color: AppColors.primary,
                    image: DecorationImage(
                      image: AssetImage(AppAssets.offerImage),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 36.h, horizontal: 16.w),
                  child: Icon(
                    size: 30.sp,
                    Icons.arrow_back,
                    color: Colors.black87,
                  ),
                )
              ],
            ),

            // Product Details Section
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                color: AppColors.background,
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          '\$ 2.22',
                          style: AppTextStyles.font18PrimaryDarkSemiBoldCairo,
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
                    SizedBox(height: 8.h),
                    Text(
                      'Product Name',
                      style: AppTextStyles.font20BlackSemiBoldCairo,
                    ),
                    Text(
                      '1.50 lbs',
                      style: AppTextStyles.font12GrayCairoRegular,
                    ),
                    Row(
                      children: [
                        Text(
                          '4.5',
                          style: AppTextStyles.font16BlackCairoMedium,
                        ),
                        SizedBox(width: 8.w),
                        SizedBox(
                          width: 95.w,
                          height: 20.h,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            physics: const NeverScrollableScrollPhysics(),
                            children: List.generate(
                              5,
                              (index) => Icon(
                                Icons.star,
                                color:
                                    index < 4 ? Colors.amber : AppColors.gray,
                                size: 18.sp,
                              ),
                            ),
                          ),
                        ),
                        Text(
                          '(89 reviews)',
                          style: AppTextStyles.font12GrayCairoRegular,
                        ),
                      ],
                    ),
                    SizedBox(height: 16.h),
                    Text(
                      'Organic Mountain works as a seller for many organic growers of organic lemons. Organic lemons Organic Mountain works as a seller for many organic growers of organic lemons. Organic lemonsOrganic Mountain works as a seller for many organic growers of organic lemons. Organic lemons are easy to spot in your produce aisle. They are just like regular lemons, but they will usually have a few more scars on the outside of the lemon skin. Organic lemons are considered to be the world',
                      style: AppTextStyles.font12GrayCairoRegular,
                    ),
                    SizedBox(height: 16.h),

                    // Quantity Selector
                    QuantityProductWidget(),

                    SizedBox(height: 16.h),
                  ],
                ),
              ),
            )
          ],
        ),
      ),

      // Sticky Bottom Button
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(16.h),
        child: AppTextButton(
          buttonText: 'Add to Cart',
          image: AppAssets.cart,
          onPressed: () {
            // Your action
          },
        ),
      ),
    );
  }
}
