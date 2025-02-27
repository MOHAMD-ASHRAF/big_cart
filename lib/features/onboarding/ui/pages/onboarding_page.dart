import 'package:big_cart/core/helpers/extesions.dart';
import 'package:big_cart/core/helpers/spacing.dart';
import 'package:big_cart/core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import '../../../../core/constants/app_assets.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/app_text_styles.dart';
import '../../../../core/widgets/app_text_button.dart';
import '../widgets/custom_indicator.dart';
import '../widgets/custom_onBoarding_widget.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  PageController _controller = PageController();
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView(
          controller: _controller,
          onPageChanged: (value) {
            setState(() {
              index = value;
            });
          },
          children: [
            CustomOnBoardingWidget(
              heading1: 'Welcome to',
              showLogo: true,
              description: 'Lorem ipsum dolor sit amet,  rem ipsum dolor sit amet, conset rem ipsum dolor sit amet, conset',
              backGroundImage: AppAssets.firstImage,
            ),
            CustomOnBoardingWidget(
              heading1: 'Buy Quality',
              heading2: 'Dairy Products',
              description: 'Lorem ipsum dolor sit amet, consetetur',
              backGroundImage: AppAssets.secondImage,
            ),
            CustomOnBoardingWidget(
              heading1: 'Buy Premium',
              heading2: 'Quality Fruits',
              description: 'Lorem ipsum dolor sit amet, consetetur',
              backGroundImage: AppAssets.thirdImage,
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomIndicator(active: index == 0),
                  horizontalSpace(6),
                  CustomIndicator(active: index == 1),
                  horizontalSpace(6),
                  CustomIndicator(active: index == 2),
                ],
              ),
              verticalSpace(10),
              AppTextButton(
                buttonText: "Get Started",
                textStyle: AppTextStyles.font14WhiteCairoMedium,
                gradient: const LinearGradient(
                  colors: [AppColors.primary, AppColors.primaryDark],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                onPressed: () {
                  context.pushReplacementNamed(Routes.welcomePage);
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
