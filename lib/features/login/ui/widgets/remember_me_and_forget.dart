

import 'package:big_cart/core/widgets/custom_switch_button.dart';
import 'package:flutter/material.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/app_text_styles.dart';

class RememberMeAndForgetWidget extends StatelessWidget {
  const RememberMeAndForgetWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomSwitchButton(
          value: true,
          onChanged: (bool value) {},
        ),
        horizontalSpace(4),
        Text(
          'Welcome back!',
          style: AppTextStyles.font16GrayCairoMedium,
        ),
        const Spacer(),
        GestureDetector(
          onTap: (){

          },
          child: Text(
            'Forget Password',
            style: AppTextStyles.font16BlueCairoMedium,
          ),
        ),
      ],
    );
  }
}
