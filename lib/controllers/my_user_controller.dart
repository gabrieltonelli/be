import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:be/controllers/auth_controller.dart';
import 'package:be/model/user.dart';
import 'package:be/repository/my_user_repository.dart';
import 'package:get/get.dart';

class MyUserController extends GetxController {
  final _userRepository = Get.find<MyUserRepository>();

  final nameController = TextEditingController();
  final lastNameController = TextEditingController();
  final ageController = TextEditingController();

  Rx<File?> pickedImage = Rx(null);
  Rx<bool> isLoading = Rx(false);
  Rx<bool> isSaving = Rx(false);
  Rx<MyUser?> user = Rx(null);

  @override
  void onInit() {
    getMyUser();
    super.onInit();
  }

  void setImage(File? imageFile) async {
    pickedImage.value = imageFile;
  }

  Future<void> getMyUser() async {
    isLoading.value = true;
    user.value = await _userRepository.getMyUser();
    nameController.text = user.value?.name ?? '';
    lastNameController.text = user.value?.lastName ?? '';
    ageController.text = user.value?.age.toString() ?? '';
    isLoading.value = false;
  }

  Future<void> saveMyUser() async {
    isSaving.value = true;
    final uid = Get.find<AuthController>().authUser.value!.uid;
    final name = nameController.text;
    final lastName = lastNameController.text;
    final age = int.tryParse(ageController.text) ?? 0;
    final newUser = MyUser(uid, name, lastName, age, image: user.value?.image);
    user.value = newUser;

    // For testing add delay
    await Future.delayed(const Duration(seconds: 3));
    await _userRepository.saveMyUser(newUser, pickedImage.value);
    isSaving.value = false;
  }
}
