import 'package:flutter/material.dart';
import 'package:fun_with_getx/ui/register/register_controller.dart';
import 'package:get/get.dart';

class RegisterPage extends StatelessWidget {

  final RegisterController controller = Get.put(RegisterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 100),
            Text(
              "DSCoding",
              style: TextStyle(fontSize: 48),
            ),
            Container(
              margin: EdgeInsets.all(24),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.blue.withOpacity(0.2),
                    blurRadius: 8,
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Create Your Account",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16),
                  TextFormField(
                    controller: controller.username,
                    decoration: InputDecoration(
                      hintText: "Username",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.lightBlue),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  TextFormField(
                    // controller: controller.email,
                    decoration: InputDecoration(
                      hintText: "Email",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.lightBlue),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  TextFormField(
                    controller: controller.password,
                    decoration: InputDecoration(
                      hintText: "Password",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.lightBlue),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            GetBuilder<RegisterController>(
              builder: (RegisterController controller) {
                if (controller.loading) {
                  return Center(child: CircularProgressIndicator());
                }

                return MaterialButton(
                  child: Text("Register"),
                  minWidth: MediaQuery.of(context).size.width / 2,
                  color: Colors.green,
                  textColor: Colors.white,
                  onPressed: () {
                    controller.register();
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
