import 'package:flutter/material.dart';

import 'be_attribute_status_icons.dart';
class Be_Dialogs{
  attributeStatus(BuildContext context, String received, String readed){
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext contect){
          return AlertDialog(
              content: SingleChildScrollView(
                child: ListBody(
                  children: <Widget>[
                    Row(children: <Widget>[Be_AttributeStatusIcons(0XFF999999), Text('Recibido: ', style: TextStyle(fontSize: 18.0, color: Colors.black54)),Text(received, style: TextStyle(fontSize: 18.0, color: Colors.black)),],),
                    Row(children: <Widget>[Be_AttributeStatusIcons(0XFF0D89E5), Text('Leido: ', style: TextStyle(fontSize: 18.0, color: Colors.black54)),Text(readed, style: TextStyle(fontSize: 18.0, color: Colors.black)),],),

                  ],
                ),
              ),
              actions: <Widget>[
                FlatButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text('Ok'),
                )
              ]
          );
        }
    );

  }


  information(BuildContext context, String title, String description){
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext contect){
          return AlertDialog(
              title: Text(title),
              content: SingleChildScrollView(
                child: ListBody(
                  children: <Widget>[
                    Text(description),
                  ],
                ),
              ),
              actions: <Widget>[
                FlatButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text('Ok'),
                )
              ]
          );
        }
    );
  }
  waiting(BuildContext context, String title, String description){
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext contect){
          return AlertDialog(
            title: Text(title),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text(description)
                ],
              ),
            ),
            /*
              actions: <Widget>[
                FlatButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text('Ok'),
                )
              ]*/
          );
        }
    );
  }
  _confirmResult(bool isYes, BuildContext context){
    if(isYes){
      print('Yes selection');
      Navigator.pop(context);
    }else{
      print('Cansel selection');
      Navigator.pop(context);
    }

  }
  confirm(BuildContext context, String title, String description){
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext contect){
          return AlertDialog(
              title: Text(title),
              content: SingleChildScrollView(
                child: ListBody(
                  children: <Widget>[
                    Text(description)
                  ],
                ),
              ),
              actions: <Widget>[
                FlatButton(
                  onPressed: () => _confirmResult(false, context),
                  child: Text('Cancelar'),
                ),
                FlatButton(
                  onPressed: () => _confirmResult(true, context),
                  child: Text('Sí'),
                )
              ]
          );
        }
    );
  }
}