import 'dart:io';

import 'package:be/model/user.dart';

abstract class MyUserRepository {
  Future<MyUser?> getMyUser();

  Future<void> saveMyUser(MyUser user, File? image);
}
