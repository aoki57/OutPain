import 'package:flutter/material.dart';
import 'package:tubes/widgets/recover_header.dart';
import 'package:tubes/widgets/terapi_content.dart';

class EssensialOil extends StatelessWidget {
  const EssensialOil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RecoverHeader(
              title: 'Essensial Oil',
              image: 'assets/image/oil.jpg',
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
                      text:
                          'Cara 1: Penggunaan essential oil dengan cara di terapkan pada kulit, atau di oles ke kulit,',
                    ),
                    TerapiContent(
                        text:
                            'Cara 2: Menghirup langsung essential oil dari botol nya dengan hati-hati, usahakan agar napas anda tetap rileks saat menghirup aromanya,'),
                    TerapiContent(text: 'Cara 3: Inhalasi Uap'),
                    TerapiContent(text: 'Cara 4: Pijat aromaterapi'),
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
