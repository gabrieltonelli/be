import 'dart:ffi';

import 'package:flutter/material.dart';

class Be_GradientBackground extends StatelessWidget {
  List<Color> colors;

  Be_GradientBackground(this.colors);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: colors,
            begin: const FractionalOffset(1.0, 0.1),
            end: const FractionalOffset(1.0, 0.9)),
      ),
    );
  }
}
