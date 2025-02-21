import 'package:flutter/cupertino.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Image.asset(
        'assets/image/first_image.png',
        height: double.infinity,
        width: double.infinity,
        fit: BoxFit.fill,
      ),
      Text('data'),
    ]);
  }
}
