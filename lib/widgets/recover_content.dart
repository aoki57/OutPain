import 'package:flutter/material.dart';

class RecoverContent extends StatelessWidget {
  const RecoverContent({
    super.key,
    required this.title,
    required this.image,
    required this.times,
  });

  final String title, image, times;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image(
                    image: AssetImage(image),
                    width: 100,
                    height: 100,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(times),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Container(
          height: 1,
          color: Colors.grey.shade300,
        )
      ],
    );
  }
}
