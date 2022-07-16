/*import 'package:flutter/material.dart';
import 'dart:ui';
Drawer sideNav(){
  return Drawer(
      child: Stack(
          children: <Widget> [
      //first child be the blur background
              BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0), //this is dependent on the import statment above
                    child: Container(
                          decoration: BoxDecoration(color: Color.grey.withOpacity(0.5))
                    )
              ),
              ListView(
                  padding: EdgeInsets.zero,
                  children: <Widget>[
                        DrawerHeader(
                          child: Text('Hello Drawer Title')
                        ),
  /*
  ListTitle(
  leading: Icon(Icons.dashboard, color: Colors.white)
  title: "Dashboard"
  onTap: (){

  }
  )
  ]
  )
  */
                        ]
              )
          ]
      )
  );
}
*/