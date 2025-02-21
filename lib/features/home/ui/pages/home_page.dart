import 'package:big_cart/core/helpers/extesions.dart';
import 'package:flutter/material.dart';
import '../../../../core/routing/routes.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body:  Center(
        child: Column(
          children: [
            Text('Home Page'),
            MaterialButton(onPressed: (){
              context.pushNamed(Routes.onBoardingPage);
            }, child: Text('Go to Second Page'))
          ],
        ),
      ),
    );
  }
}
