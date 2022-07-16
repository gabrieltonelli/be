import 'package:flutter/material.dart';
class Be_AttributeStatusIcons extends StatelessWidget {
  int color;

  Be_AttributeStatusIcons(this.color);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Icon(
          Icons.check,
          color:  Color(color),
          size: 18,
        ),
        Padding(
          padding: EdgeInsets.only(left: 7),
          child:
          Icon(
            Icons.check,
            color: Color(color),
            size: 18,
          ),
        ),
      ],
    );
  }
}