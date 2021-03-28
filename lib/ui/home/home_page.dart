import 'package:flutter/material.dart';
import 'package:fun_with_getx/ui/home/home_controller.dart';
import 'package:fun_with_getx/ui/home/page_two.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {

  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Obx(
          () {
            return Text(
              "${controller.count.value}",
              style: TextStyle(fontSize: 48),
            );
          },
        ),
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              controller.increment();
            },
          ),
          FloatingActionButton(
            child: Icon(Icons.arrow_forward),
            onPressed: () {
              Get.to(PageTwo());
            },
          ),
        ],
      ),
    );
  }
}
