import 'package:flutter/material.dart';
class Be_GradientBackground extends StatelessWidget {
  int color1;
  int color2;

  Be_GradientBackground(this.color1,this.color2);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [
              Color(color1),
              Color(color2),
            ],
            begin: const FractionalOffset(1.0, 0.1),
            end: const FractionalOffset(1.0, 0.9)),
      ),
    );
  }
}