import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:tubes/auth/controller/login_controller.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    final _formkey = GlobalKey<FormState>();

    return Form(
      key: _formkey,
      child: Container(
        padding: EdgeInsets.only(top: 20, bottom: 15),
        child: Column(
          children: [
            TextFormField(
              controller: controller.email,
              // validator: (value) {
              //   if (value == null || value.isEmpty) {
              //     return 'Masukkan email Anda';
              //   }
              //   return null;
              // },
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person_outline_outlined),
                labelText: 'Email',
                // hintText: 'email',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: controller.password,
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock_outlined),
                labelText: 'Password',
                // hintText: 'Password',
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                    onPressed: () {}, icon: Icon(Icons.remove_red_eye_sharp)),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Navigator.pushNamed(context, '/nav');
                  if (_formkey.currentState!.validate()) {
                    controller.loginUser(
                      controller.email.text.trim(),
                      controller.password.text.trim(),
                    );
                  }
                },
                child: Text('Login'.toUpperCase()),
                style: OutlinedButton.styleFrom(padding: EdgeInsets.all(24)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
