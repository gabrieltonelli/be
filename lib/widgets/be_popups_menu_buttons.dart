import 'package:flutter/material.dart';

class CustomPopupMenu {
  String itemId;
  String title;
  IconData icon;
  CustomPopupMenu(
      {required this.itemId, required this.title, required this.icon});
}

Widget Be_PopupContactMenu() {
  CustomPopupMenu choice;

  List<CustomPopupMenu> choices = <CustomPopupMenu>[
    CustomPopupMenu(
        itemId: "omitir", title: "Omitir contacto", icon: Icons.visibility_off),
  ];
  return PopupMenuButton<String>(
    icon: const Icon(
      Icons.more_vert,
      color: Colors.white,
    ),
    onSelected: choiceActionContactMenu,
    itemBuilder: (BuildContext context) {
      return choices.map((CustomPopupMenu choice) {
        return PopupMenuItem<String>(
          value: choice.itemId,
          child: Row(
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(right: 7),
                  child: Icon(
                    choice.icon,
                    color: Colors.grey,
                  )),
              Text(choice.title)
            ],
          ),
        );
      }).toList();
    },
  );
}

void choiceActionContactMenu(String choice) {
  if (choice == 'omitir') {
    print('omitir');
  }
}

////////////////////////////////////////////////////////////
Widget Be_PopupAttributeMenu() {
  CustomPopupMenu choice;

  List<CustomPopupMenu> choices = <CustomPopupMenu>[
    CustomPopupMenu(
        itemId: "omitir", title: "Omitir tarjeta", icon: Icons.visibility_off),
  ];

  return PopupMenuButton<String>(
    offset: const Offset(10, 10),
    icon: const Icon(
      Icons.more_vert,
      color: Colors.grey,
    ),
    onSelected: choiceActionAttributeMenu,
    itemBuilder: (BuildContext context) {
      return choices.map((CustomPopupMenu choice) {
        return PopupMenuItem<String>(
          value: choice.itemId,
          child: Row(
            children: <Widget>[
              Padding(
                  padding: const EdgeInsets.only(right: 7),
                  child: Icon(
                    choice.icon,
                    color: Colors.grey,
                  )),
              Text(choice.title)
            ],
          ),
        );
      }).toList();
    },
  );
}

void choiceActionAttributeMenu(String choice) {
  print(choice);
  if (choice == 'omitir') {
    print('No corresponde al contacto');
  }
}
////////////////////////////////////////////////////////////
/*
Widget Be_PopupAttributeStatus(){
  CustomPopupMenu choice;

  List<CustomPopupMenu> choices = <CustomPopupMenu>[
    CustomPopupMenu(itemId: "omitir", title: "Omitir tarjeta", icon: Icons.check),
  ];



  return PopupMenuButton<String>(
    offset: Offset(10, 10),
    icon: Icon(
      Icons.more_vert,
      color: Colors.grey,
    ),
    onSelected: choiceActionAttributeStatus,
    itemBuilder: (BuildContext context){

      return choices.map((CustomPopupMenu choice){
        return PopupMenuItem<String>(
          value: choice.itemId,
          child: Row(children: <Widget>[Padding(padding: EdgeInsets.only(right: 7), child:Icon(Icons.visibility_off,color: Colors.grey,)),Text(choice.title)],),

        );
      }).toList();
    },
  );
}
void choiceActionAttributeStatus(String choice){
  print(choice);
  if(choice == 'omitir'){
    print('No corresponde al contacto');
  }
}
*/