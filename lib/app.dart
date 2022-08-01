import 'package:flutter/material.dart';
import 'package:be/controllers/auth_controller.dart';
import 'package:be/navigation/routes.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  final authController = Get.put(AuthController());

  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(
      init: authController,
      builder: (_) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'be',
          theme: ThemeData(
              appBarTheme: const AppBarTheme(
                color: Colors.black,
              ),
              bottomAppBarTheme: const BottomAppBarTheme(
                color: Colors.black,
              ),
              progressIndicatorTheme:
                  ProgressIndicatorThemeData(color: Colors.white),
              primaryColor: Colors.black),
          onGenerateRoute: Routes.routes,
        );
      },
    );
  }
}
