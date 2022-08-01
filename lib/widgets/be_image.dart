import 'package:flutter/material.dart';

class Be_Image extends StatelessWidget {
  String path;
  double width;
  double height;
  double margTop;
  double margLeft;
  double margRight;

  Be_Image(this.path, this.width, this.height, this.margTop, this.margLeft,
      this.margRight);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      child: Container(
        margin: EdgeInsets.only(top: margTop, left: margLeft, right: margRight),
        width: width,
        height: height,
        decoration: BoxDecoration(
          image: DecorationImage(fit: BoxFit.contain, image: AssetImage(path)),
        ),
      ),
    );
  }
}
