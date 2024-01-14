import 'package:flutter/material.dart';
import 'package:tubes/pages/form/form_header.dart';
import 'package:tubes/pages/register/register_footer.dart';
import 'package:tubes/pages/register/register_form.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
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
                  children: [
                    FormHeader(
                      image: 'assets/image/headerImage.png',
                      title: 'Begin Your Wellness',
                      subTitle: 'Quick and easy signup for a happier',
                    ),
                    RegisterForm(),
                    RegisterFooter(),
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
