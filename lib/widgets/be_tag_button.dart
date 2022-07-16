import 'package:flutter/material.dart';
class Be_TagButton extends StatelessWidget {
  String    text;
  double    fontSize;
  bool      LTR;
  int       bgColor;
  double    padding;
  var       icon;
  double    iconSize;
  int       iconColor;
  final VoidCallback  callBack;



  Be_TagButton(this.text, this.fontSize, this.LTR, this.bgColor, this.padding, this.icon, this.iconSize, this.iconColor, this.callBack);

  @override
  Widget build(BuildContext context) {
    print(LTR.toString());
    return GestureDetector(
        child:Container(
      child: RaisedButton(
        elevation:10,
        shape:  RoundedRectangleBorder(borderRadius: new BorderRadius.circular(50)),
        color: Color(bgColor),
        child:Padding(
          padding: EdgeInsets.only(top: 15, bottom: 15),
          child: LTR==false ?
          Row(children: <Widget>[
              Icon(icon, color: Color(iconColor), size: iconSize),
              Padding(
                padding: EdgeInsets.only(left: 5) ,
                child:
              Text(text, style: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: Color(iconColor),
                //fontFamily: "FlamanteRoma",
                //height: 1.6,
              ),
              ),
              ),
          ],):
          Row(children: <Widget>[

            Padding(
              padding: EdgeInsets.only(right: 5) ,
              child:
              Text(text, style: TextStyle(

                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: Color(iconColor),
                //fontFamily: "FlamanteRoma",
                //height: 1.6,
              ),
              ),
            ),
            Icon(icon, color: Color(iconColor), size: iconSize)
          ],)

          ,
        ),
        onPressed: (){
          print("llega");
          return callBack();
        }

        )

    )
    );
  }
}