import 'dart:async';

import 'package:be/repository/auth_repository.dart';
import 'package:get/get.dart';

class HomeSignInController extends GetxController {
  final _authRepository = Get.find<AuthRepository>();

  final error = Rx<String?>(null);
  final isLoading = RxBool(false);

  Future<void> signInAnonymously() =>
      _signIn(_authRepository.signInAnonymously);
  Future<void> signInWithGoogle() => _signIn(_authRepository.signInWithGoogle);
  Future<void> signInWithFacebook() =>
      _signIn(_authRepository.signInWithFacebook);
  Future<void> signInWithTwitter() =>
      _signIn(_authRepository.signInWithTwitter);
  Future<void> signInWithLinkedin() =>
      _signIn(_authRepository.signInWithTwitter);
  Future<void> _signIn(Future<AuthUser?> Function() auxUser) async {
    await Future.delayed(Duration(milliseconds: 100));
    try {
      isLoading.value = true;
      error.value = null;
      await auxUser();
    } catch (e) {
      print(e);
      isLoading.value = false;
      error.value = e.toString();
    }
    //isLoading.value = false;
  }
}
