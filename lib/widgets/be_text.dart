import 'package:flutter/material.dart';
class Be_Text extends StatelessWidget {
  String  mytext;
  double  size;
  FontWeight  weight;
  TextAlign align;
  int     color;
  double  margTop;
  double  margLeft;
  double  margRight;

  Be_Text(this.mytext,this.size, this.weight, this.align, this.color, this.margTop, this.margLeft, this.margRight);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: margTop, left: margLeft, right: margRight),
      child: Text(
        mytext,
        textAlign: align,
        style: TextStyle(
          fontSize: size,
          fontWeight: weight,
          color: Color(color),
          fontFamily: "FlamanteRoma",
          height: 1.6,
        ),
      ),
    );
  }
}