import 'package:flutter/material.dart';

class Be_WhiteButton extends StatelessWidget {
  String text;
  double width;
  double margTop;
  double margLeft;
  double margRight;
  Widget widget;

  Be_WhiteButton(this.text, this.width, this.margTop, this.margLeft,
      this.margRight, this.widget);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          margin:
              EdgeInsets.only(top: margTop, left: margLeft, right: margRight),
          height: 50.0,
          width: width,
          child: RaisedButton(
            splashColor: Colors.deepPurple,
            child: Text(text,
                style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: "FlamanteRoma",
                    color: Colors.indigo)),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => widget),
              );
            },
          )),
    );
  }
}
