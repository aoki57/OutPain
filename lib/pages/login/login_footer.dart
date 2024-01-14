import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:tubes/pages/register/register.dart';

class LoginFooter extends StatelessWidget {
  const LoginFooter({
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
          onPressed: () => Get.to(() => const Register()),
          child: Text.rich(
            TextSpan(
              text: "Don't have an Account? ",
              style: TextStyle(color: Colors.black),
              children: [
                TextSpan(
                  text: 'Signup',
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
