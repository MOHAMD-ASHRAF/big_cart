import 'package:big_cart/core/constants/app_assets.dart';
import 'package:big_cart/core/helpers/extesions.dart';
import 'package:big_cart/core/helpers/spacing.dart';
import 'package:big_cart/core/routing/routes.dart';
import 'package:big_cart/core/widgets/app_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_text_styles.dart';
import '../../../../core/widgets/custom_richText.dart';
import '../widgets/shadow_appBar.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            AppAssets.welcomeImage,
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.75,
            fit: BoxFit.cover,
          ),
          Column(children: [
            const ShadowAppBar(
              title: 'Welcome',
            ),
            const Spacer(),
            Container(
                width: double.infinity,
                padding: EdgeInsets.all(16.w),
                decoration: BoxDecoration(
                  color: AppColors.background,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16.r),
                    topRight: Radius.circular(16.r),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome To Big Cart',
                      style: AppTextStyles.font24TextBoldCairo,
                    ),
                    Text(
                      'Buy Quality Dairy Products Buy Quality Dairy Products Buy Quality Dairy Products ',
                      style: AppTextStyles.font12GrayCairoRegular,
                    ),
                    verticalSpace(28),
                    AppTextButton(
                      buttonText: 'Continue with google',
                      textStyle: AppTextStyles.font16BlackCairoMedium,
                      onPressed: () {},
                      image: AppAssets.google,
                      backGroundColor: Colors.white,
                    ),
                    verticalSpace(16),
                    AppTextButton(
                      buttonText: 'Create an account',
                      textStyle: AppTextStyles.font16BlackCairoMedium,
                      onPressed: () {},
                      image: AppAssets.person,
                    ),
                    verticalSpace(28),
                    Center(
                      child: CustomRichText(
                        title: 'Already have an account ?',
                        value: 'Login',
                        onTap: () {
                          context.pushNamed(Routes.homePage);
                        },
                      ),
                    ),
                    verticalSpace(12),
                  ],
                ))
          ])
        ],
      ),
    );
  }
}
