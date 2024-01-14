import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:tubes/pages/login/login.dart';

class RegisterFooter extends StatelessWidget {
  const RegisterFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('OR'),
        SizedBox(
          height: 15,
        ),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            icon: Image(
              image: AssetImage('assets/image/google.png'),
              width: 20,
            ),
            onPressed: () {},
            label: Text('Login with Google'),
            style: OutlinedButton.styleFrom(
              padding: EdgeInsets.all(24),
              foregroundColor: Colors.black,
              side: BorderSide(color: Colors.grey.shade400),
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        TextButton(
          onPressed: () => Get.to(() => const Login()),
          child: Text.rich(
            TextSpan(
              text: "Already have an Account? ",
              style: TextStyle(color: Colors.black),
              children: [
                TextSpan(
                  text: 'Login'.toUpperCase(),
                  style: TextStyle(color: Colors.blue),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
