
import 'package:flutter/material.dart';
import 'package:fun_with_getx/repository/auth_repository.dart';
import 'package:fun_with_getx/ui/home/home_page.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  RxBool loading = false.obs;
  Rx<User> user2 = User(null, null).obs;

  Future<void> login() async {
    loading.value = true;
    user2.update((val) {
      val.name = "X";
      val.email = "X";
    });
    AuthRepository auth = AuthRepository();
    dynamic user = await auth.login(email.text, password.text);

    loading.value = false;

    if (true) {
      Get.off(HomePage());
      Get.snackbar("Info", "Login berhasil");
    } else {
      Get.snackbar("Info", "Login gagal");
    }

  }
}

class User {
  String name;
  String email;

  User(this.name, this.email);
}