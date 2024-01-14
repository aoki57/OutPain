import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:tubes/auth/auth_repository/auth_repository.dart';
import 'package:tubes/auth/user_repository/user_repository.dart';
import 'package:tubes/model/user_model.dart';

class RegisterController extends GetxController {
  static RegisterController get instance => Get.find();

  final email = TextEditingController();
  final password = TextEditingController();
  final fullName = TextEditingController();

  final userRepo = Get.put(UserRepository());

  void registerUser(String email, String password) {
    AuthRepository.instance.createUserWithEmailAndPassword(email, password);
  }

  Future<void> createUser(UserModel user) async {
    await userRepo.createUser(user);
  }
}
