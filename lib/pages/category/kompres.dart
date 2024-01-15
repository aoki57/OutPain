import 'package:flutter/material.dart';
import 'package:tubes/widgets/recover_header.dart';
import 'package:tubes/widgets/terapi_content.dart';

class Kompres extends StatelessWidget {
  const Kompres({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RecoverHeader(
              title: 'Kompres',
              image: 'assets/image/kompres.jpg',
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
                            "Cara Penggunaan",
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
                    TerapiContent(
                      text: '1. Kompres Hangat',
                    ),
                    TerapiContent(
                        text:
                            'Kompres (heating pad) ataupun mandi air hangat, cenderung lebih tepat untuk mengurangi sendi yang nyeri dan otot yang lelah. Hal ini disebabkan karena panas dapat memperbaiki sirkulasi dan mengantarkan nutrisi terhadap sendi dan otot yang bermasalah.'),
                    TerapiContent(text: '2. Kompres Dingin'),
                    TerapiContent(
                        text:
                            'Kompres dingin (ice pack, sayuran beku, es, cold pack) paling pas untuk digunakan pada nyeri akut karena mempersempit pembuluh darah yang mengalirkan darah ke area radang, serta mampu mengurangi pembengkakan.'),
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
