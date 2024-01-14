import 'package:flutter/material.dart';

class FormHeader extends StatelessWidget {
  const FormHeader(
      {super.key,
      required this.image,
      required this.title,
      required this.subTitle});

  final String image, title, subTitle;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      children: [
        Container(
            padding: EdgeInsets.all(10),
            child: Image(image: AssetImage(image), height: size.height * 0.2)),
        Text(
          title,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          subTitle,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
