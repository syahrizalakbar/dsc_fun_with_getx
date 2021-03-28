
import 'package:flutter/material.dart';
import 'package:fun_with_getx/repository/auth_repository.dart';
import 'package:fun_with_getx/ui/login/login_page.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  TextEditingController username = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  bool loading = false;

  Future<void> register() async {
    loading = true;
    update();

    AuthRepository auth = AuthRepository();
    bool success = await auth.register(username.text, email.text, password.text);

    loading = false;
    update();

    if (success) {
      Get.off(LoginPage());
      Get.snackbar("Info", "Register berhasil");
    } else {
      Get.snackbar("Info", "Register gagal");
    }

  }
}