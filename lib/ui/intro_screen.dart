import 'package:be/widgets/be_gradient_background.dart';
import 'package:be/widgets/be_image.dart';
import 'package:be/widgets/be_text.dart';
import 'package:be/widgets/be_white_button.dart';
import 'package:be/widgets/be_social_network_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:be/controllers/home_signin_controller.dart';
//import 'package:be/navigation/routes.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _IntroPager(),
    );
  }
}

class _IntroPager extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final homeSignInController = Get.put(HomeSignInController());
    return Obx(() {
      return AbsorbPointer(
          absorbing: homeSignInController.isLoading.value, child: Wellcome());
    });
  }
}

// ignore: non_constant_identifier_names
Widget Wellcome() {
  return Scaffold(
    body: Stack(
      children: <Widget>[
        Be_GradientBackground(const [
          Color(0xffffe680),
          Color(0xffb63dcc),
          Color(0xff4b2acc),
        ]),
        Be_Image(
            'assets/images/logo/logo1b.png', 119.0, 90.0, 50.0, 20.0, 20.0),
        Be_Text('Tu comunidad te conoce', 22.0, FontWeight.bold,
            TextAlign.center, 0xFFffffff, 140.0, 20.0, 20.0),
        Be_Image('assets/images/im1.png', 300.0, 300.0, 120.0, 20.0, 20.0),
        Be_Text(
            'Califica tus contactos en redes sociales! Es fácil, divertido y ANÓNIMO!',
            20.0,
            FontWeight.bold,
            TextAlign.center,
            0xFFffffff,
            365.0,
            20.0,
            20.0),
        Be_WhiteButton('vamos!', 180.0, 380.0, 20.0, 20.0, _LoginPage()),
      ],
    ),
  );
}

class _LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final homeSignInController = Get.find<HomeSignInController>();
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Be_GradientBackground(
              const [Color(0xffffe680), Color(0xffb63dcc), Color(0xff4b2acc)]),
          Be_Image(
              'assets/images/logo/logo1b.png', 119.0, 90.0, 50.0, 20.0, 20.0),
          Be_Text('Busquemos contactos', 22.0, FontWeight.bold,
              TextAlign.center, 0xFFffffff, 140.0, 20.0, 20.0),
          Be_Image('assets/images/im2.png', 300.0, 300.0, 200.0, 20.0, 20.0),
          Be_Text(
              'Ingresa con tu red social preferida para comenzar a calificar.',
              20.0,
              FontWeight.bold,
              TextAlign.center,
              0xFFffffff,
              440.0,
              20.0,
              20.0),
          Container(
            margin: const EdgeInsets.only(top: 220),
            child: Center(
              heightFactor: 0,
              child: Obx(
                () => Visibility(
                  visible: homeSignInController.isLoading.value,
                  child: const CircularProgressIndicator(),
                ),
              ),
            ),
          ),
/*
                  Obx(
                    () => Visibility(
                        visible: homeSignInController.error.value?.isNotEmpty ==
                            true,
                        child: SnackBar(
                          content: Text(
                            homeSignInController.error.value ?? '',
                            style: const TextStyle(
                                color: Colors.red, fontSize: 20),
                          ),
                        )),
                  ),
                  */
          /*
              ])),*/
          Container(
              margin: const EdgeInsets.only(top: 190.0),
              child: Obx(() => Visibility(
                    visible: !homeSignInController.isLoading.value,
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Be_SocialNetworkButtons(
                              'facebook', 30.0, homeSignInController),
                          Be_SocialNetworkButtons(
                              'twitter', 30.0, homeSignInController),
                          Be_SocialNetworkButtons(
                              'linkedin', 30.0, homeSignInController),
                          Be_SocialNetworkButtons(
                              'google+', 30.0, homeSignInController),
                        ]),
                  ))),
        ],
      ),
    );
  }
}
