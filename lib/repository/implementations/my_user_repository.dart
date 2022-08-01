import 'dart:io';

import 'package:be/model/user.dart';
import 'package:be/provider/firebase_provider.dart';
import 'package:be/repository/my_user_repository.dart';

class MyUserRepositoryImp extends MyUserRepository {
  final provider = FirebaseProvider();

  @override
  Future<MyUser?> getMyUser() => provider.getMyUser();

  @override
  Future<void> saveMyUser(MyUser user, File? image) =>
      provider.saveMyUser(user, image);
}
