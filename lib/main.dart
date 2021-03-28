import 'package:flutter/material.dart';
import 'package:fun_with_getx/ui/login/login_page.dart';
import 'package:fun_with_getx/ui/register/register_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Fun With GetX',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Poppins',
      ),
      getPages: [

      ],
      home: LoginPage(),
    );
  }
}
