import 'package:big_cart/core/constants/app_assets.dart';
import 'package:big_cart/core/helpers/extesions.dart';
import 'package:big_cart/core/helpers/spacing.dart';
import 'package:big_cart/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_text_styles.dart';
import '../../../../core/widgets/app_text_button.dart';
import '../../../../core/widgets/custom_richText.dart';
import '../../../../core/widgets/custom_text_form_field.dart';
import '../widgets/remember_me_and_forget.dart';
import '../widgets/shadow_appBar.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
                      'Welcome back!',
                      style: AppTextStyles.font24TextBoldCairo,
                    ),
                    Text(
                      'Sign in to your account',
                      style: AppTextStyles.font12GrayCairoRegular,
                    ),
                    verticalSpace(28),
                    const CustomTextFormField(
                      hintText: 'Emil Address',
                      prefixIcon: Icons.email_outlined,
                    ),
                    verticalSpace(6),
                    const CustomTextFormField(
                      hintText: 'Password',
                      prefixIcon: Icons.lock_outline,
                      isPassword: true,
                    ),
                    verticalSpace(16),
                    const RememberMeAndForgetWidget(),
                    verticalSpace(16),

                    AppTextButton(
                      buttonText: 'login',
                      onPressed: () {
                        context.pushNamed(Routes.navigationPage);
                      },
                    ),
                    verticalSpace(28),
                    Center(
                      child: CustomRichText(
                        title: 'Don’t have an account ?',
                        value: 'Sign up',
                        onTap: () {
                          context.pushNamed(Routes.signupPage);
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

