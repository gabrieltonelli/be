import 'package:flutter/material.dart';
import 'package:be/widgets/be_gradient_background.dart';

class Be_Progress extends StatelessWidget {
  /*String text;
  Be_GradientBackground(this.text);
  */
  @override
  Widget build(BuildContext context) {
    return

//      Scaffold(
//      backgroundColor: Colors.transparent,
//      body:

        Stack(
      children: <Widget>[
        Be_GradientBackground([
          Color(0xffffe680),
          Color(0xffb63dcc),
          Color(0xff4b2acc),
        ]),
        Container(
            color: Colors.transparent,
            alignment: Alignment(0.0, 0.0),
            height: MediaQuery.of(context).size.height * 0.6,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircularProgressIndicator(),
                Text("Un momento por favor...",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFffffff),
                      fontFamily: "FlamanteRoma",
                      height: 2.6,
                      decoration: TextDecoration.none,
                    )),
              ],
            ))
      ],
    )
        //)
        ;
  }
}
