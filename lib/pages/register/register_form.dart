import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:tubes/auth/controller/register_controller.dart';
import 'package:tubes/model/user_model.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(RegisterController());
    final _formkey = GlobalKey<FormState>();

    return Container(
      padding: EdgeInsets.only(top: 20, bottom: 15),
      child: Form(
        key: _formkey,
        child: Column(
          children: [
            TextField(
              controller: controller.fullName,
              decoration: InputDecoration(
                label: Text('Fullname'),
                prefixIcon: Icon(Icons.person_outline_rounded),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: controller.email,
              decoration: InputDecoration(
                label: Text('Email'),
                prefixIcon: Icon(Icons.email_outlined),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              obscureText: true,
              controller: controller.password,
              decoration: InputDecoration(
                label: Text('Password'),
                prefixIcon: Icon(Icons.lock_outline_rounded),
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                    onPressed: () {}, icon: Icon(Icons.remove_red_eye_sharp)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // if (_formkey.currentState!.validate()) {
                  //   RegisterController.instance.registerUser(
                  //       controller.email.text.trim(),
                  //       controller.password.text.trim());
                  // }

                  if (_formkey.currentState!.validate()) {
                    final user = UserModel(
                      email: controller.email.text.trim(),
                      password: controller.password.text.trim(),
                      fullName: controller.fullName.text.trim(),
                    );
                    RegisterController.instance.createUser(user);
                  }
                },
                child: Text('Register'.toUpperCase()),
                style: OutlinedButton.styleFrom(padding: EdgeInsets.all(24)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
