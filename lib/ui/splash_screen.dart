import 'package:flutter/material.dart';
import 'package:be/widgets/be_gradient_background.dart';
import 'package:be/widgets/be_image.dart';
import 'package:be/widgets/be_text.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Be_GradientBackground(const [
          Color(0xffffe680),
          Color(0xffb63dcc),
          Color(0xff4b2acc),
        ]),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              CircularProgressIndicator(),
            ],
          ),
        ),
      ],
    ));
  }
}
