import 'package:big_cart/core/helpers/spacing.dart';
import 'package:flutter/material.dart';

import '../../../../core/theming/colors.dart';
import 'first_page.dart';

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
    return Column(
      children: [
        Expanded(
          child: PageView(
            controller: _controller,
            onPageChanged: (value) {
              setState(() {
                index = value;
            });

            },
            children: [
              Container(
                color: Colors.red,
              ),
              FirstPage(),
              Container(
                color: Colors.blue,
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomIndicator(active: index == 0),
            horizontalSpace(5),
            CustomIndicator(active: index == 1),
            horizontalSpace(5),
            CustomIndicator(active: index == 2),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(onPressed: (){
              _controller.jumpToPage(2);

            }, child: Text('Skip')),
            TextButton(onPressed: (){

              _controller.animateToPage(index +1, duration: Duration(milliseconds: 250), curve: Curves.linear);
            }, child: Text('Next')),
          ],
        )
      ],
    );
  }
}


class CustomIndicator extends StatelessWidget {
  final bool active;

  const CustomIndicator({super.key, required this.active});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
        duration: Duration(milliseconds: 250),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: active ? ColorsManager.mainBlue : ColorsManager.lighterGray
      ),
      width:  active ? 15 : 10,
      height: 10,
    );
  }
}
