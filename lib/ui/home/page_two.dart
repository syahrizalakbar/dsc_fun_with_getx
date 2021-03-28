import 'package:flutter/material.dart';
import 'package:fun_with_getx/ui/home/home_controller.dart';
import 'package:get/get.dart';

class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home 2"),
      ),
      body: Center(
        child: Obx(
          () {
            return Text(
              "${Get.find<HomeController>().count.value}",
              style: TextStyle(fontSize: 48),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.backspace_outlined),
        onPressed: () {
          Get.back();
        },
      ),
    );
  }
}
