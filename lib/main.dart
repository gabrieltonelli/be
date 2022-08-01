import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:be/app.dart';
import 'package:be/repository/auth_repository.dart';
import 'package:be/repository/implementations/auth_repository.dart';
import 'package:be/repository/implementations/my_user_repository.dart';
import 'package:be/repository/my_user_repository.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.light,
  ));
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  Get.put<AuthRepository>(AuthRepositoryImp());
  Get.put<MyUserRepository>(MyUserRepositoryImp());

  runApp(MyApp());
}
