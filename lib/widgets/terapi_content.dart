import 'package:flutter/material.dart';

class TerapiContent extends StatelessWidget {
  const TerapiContent({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 7),
              child: Text(
                text,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
