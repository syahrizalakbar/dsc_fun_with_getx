import 'package:flutter/material.dart';
import 'package:fun_with_getx/ui/login/login_controller.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {

  final LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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
                      "Login to Account",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 16),
                    TextFormField(
                      controller: controller.email,
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
              GetX<LoginController>(
                builder: (LoginController controller) {
                  if (controller.loading.value) {
                    return Center(child: CircularProgressIndicator());
                  }

                  return MaterialButton(
                    child: Text("Login"),
                    minWidth: MediaQuery.of(context).size.width / 2,
                    color: Colors.green,
                    textColor: Colors.white,
                    onPressed: () {
                      controller.login();
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
