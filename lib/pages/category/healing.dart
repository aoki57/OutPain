import 'package:flutter/material.dart';
import 'package:tubes/widgets/recover_header.dart';
import 'package:tubes/widgets/terapi_content.dart';

class Healing extends StatelessWidget {
  const Healing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RecoverHeader(
              title: 'Self Healing',
              image: 'assets/image/healing.jpg',
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
                            "Healing",
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
                      text:
                          'Self Healing dilakukan untuk mengeluarkan perasaan dan emosi yang terpendam dari dalam tubuh. Seseorang yang melakukan slef helaing lebih baik berhenti sejenak dari segala rutinitasnya sehingga dapat berinteraksi dengan dirinya sendiri.',
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
