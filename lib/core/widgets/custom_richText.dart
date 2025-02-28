
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../theming/app_text_styles.dart';

class CustomRichText extends StatelessWidget {
   CustomRichText({
    super.key, required this.title, required this.value, this.onTap
  });
  final String title;
   final String value;
  void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text:title,
        style: AppTextStyles.font16GrayCairoMedium,
        // Regular style
        children: [
          TextSpan(
            text: value,
            style: AppTextStyles.font16BlackCairoMedium
                .copyWith(fontWeight: FontWeight.bold),
            recognizer: TapGestureRecognizer()
              ..onTap = onTap,

          ),
        ],
      ),
    );
  }


}
