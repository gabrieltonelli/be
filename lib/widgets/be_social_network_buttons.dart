//import 'package:be/Contact/bloc/contact_bloc.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//import 'package:be/User/bloc/bloc_user.dart';
//import 'package:generic_bloc_provider/generic_bloc_provider.dart';
//import 'package:firebase_auth/firebase_auth.dart';
import 'package:be/controllers/home_signin_controller.dart';
//import 'package:page_indicator/page_indicator.dart';

class Be_SocialNetworkButtons extends StatelessWidget {
  String network;
  double iconSize;
  HomeSignInController homeSignInController;

  Be_SocialNetworkButtons(
      this.network, this.iconSize, this.homeSignInController,
      {Key? key})
      : super(key: key);

  //UserBloc userBloc;

  @override
  Widget build(BuildContext context) {
    //userBloc = BlocProvider.of(context);

    //final homeSignInController = Get.find<HomeSignInController>();

    var icon, color;

    switch (network) {
      case 'facebook':
        {
          icon = FontAwesomeIcons.facebookF;
          color = 0XFF3C5A9A;
        }
        break;
      case 'twitter':
        {
          icon = FontAwesomeIcons.twitter;
          color = 0XFF5DA9DD;
        }
        break;
      case 'linkedin':
        {
          icon = FontAwesomeIcons.linkedin;
          color = 0XFF006699;
        }
        break;
      case 'google+':
        {
          icon = FontAwesomeIcons.googlePlusG;
          color = 0XFFDD5144;
        }
        break;
      default:
        {
          icon = Icons.android;
          color = 0XFFCCCCCC;
        }
    }
    var padding = iconSize * 0.5;
    return RawMaterialButton(
      onPressed: () {
        switch (network) {
          case 'facebook':
            {
              homeSignInController.signInWithFacebook();
            }
            break;
          case 'twitter':
            {
              homeSignInController.signInWithTwitter();
            }
            break;
          case 'linkedin':
            {
              homeSignInController.signInWithLinkedin();
            }
            break;
          case 'google+':
            {
              homeSignInController.signInWithGoogle();
            }
            break;
          default:
            {
              null;
            }
        }
        ;
      },
      elevation: 3,
      fillColor: Color(color),
      child: Icon(
        icon,
        size: iconSize,
        color: Colors.white,
      ),
      padding: EdgeInsets.all(padding),
      shape: const CircleBorder(),
    );
  }
}
