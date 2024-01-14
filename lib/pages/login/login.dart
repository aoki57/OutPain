import 'package:flutter/material.dart';
import 'package:tubes/pages/login/login_footer.dart';
import 'package:tubes/pages/login/login_form.dart';
import 'package:tubes/pages/login/login_header.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Image.asset(
              "assets/bg.png",
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.all(30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    LoginHeader(size: size),
                    LoginForm(),
                    LoginFooter(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
