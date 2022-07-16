//import 'package:be/Contact/bloc/contact_bloc.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//import 'package:be/User/bloc/bloc_user.dart';
///import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Be_SocialNetworkButtons extends StatelessWidget {
  String network;
  double iconSize;
  double circleSize;
  int color;

  Be_SocialNetworkButtons(
      this.network, this.iconSize, this.circleSize, this.color);

  //UserBloc userBloc;

  @override
  Widget build(BuildContext context) {
    //userBloc = BlocProvider.of(context);

    var icon;
    switch (network) {
      case 'facebook':
        {
          icon = FontAwesomeIcons.facebookF;
        }
        break;
      case 'twitter':
        {
          icon = FontAwesomeIcons.twitter;
        }
        break;
      case 'linkedin':
        {
          icon = FontAwesomeIcons.linkedin;
        }
        break;
      case 'google+':
        {
          icon = FontAwesomeIcons.googlePlusG;
        }
        break;
      default:
        {
          icon = Icons.android;
        }
    }
    return Container(
        margin: EdgeInsets.only(top: 0.0, left: 0.0, right: 0.0),
        height: circleSize,
        width: circleSize,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Color(color),
              onPrimary: Color(color),
            ),
            child: Stack(
              children: [
                Icon(icon, color: Colors.white, size: iconSize),
              ],
            ),
            onPressed: () {
              //userBloc.signIn(network).then((FirebaseUser user) {

              //print("El usuario2 es ${user.displayName}");

              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return null;
                  /*BlocProvider (
                    bloc: UserBloc(),
                    child: ContactBloc()
                  );*/
                }),
              );
            }));
  }
}
