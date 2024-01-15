import 'package:flutter/material.dart';
import 'package:tubes/widgets/recover_content.dart';
import 'package:tubes/widgets/recover_header.dart';

class NyeriTangan extends StatelessWidget {
  const NyeriTangan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RecoverHeader(
              title: 'nyeri tangan',
              image: 'assets/image/nyeri2.jpg',
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 12),
                          child: Text(
                            "5 Recovery",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          height: 1,
                          color: Colors.grey.shade300,
                        )
                      ],
                    ),
                    RecoverContent(
                      title: 'Peregangan',
                      image: 'assets/image/headerImage.png',
                      times: '00:30',
                    ),
                    RecoverContent(
                      title: 'Peregangan',
                      image: 'assets/image/punggung1.jpg',
                      times: '00:30',
                    ),
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
