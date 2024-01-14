import 'package:flutter/material.dart';
import 'package:tubes/widgets/recover_content.dart';
import 'package:tubes/widgets/recover_header.dart';

class NyeriPunggung extends StatelessWidget {
  const NyeriPunggung({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RecoverHeader(
              title: 'nyeri punggung',
              image: 'assets/image/nyeri4.png',
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
                      title: 'Peregangan Lantai Berbaring Miring Kiri',
                      image: 'assets/image/punggung1.jpg',
                      times: '00:30',
                    ),
                    RecoverContent(
                      title: 'Peregangan Lantai Berbaring Miring Kanan',
                      image: 'assets/image/punggung2.jpg',
                      times: '00:30',
                    ),
                    RecoverContent(
                      title: 'Angkat Tangan Berdiri',
                      image: 'assets/image/punggung3.jpg',
                      times: '00:16',
                    ),
                    RecoverContent(
                      title: 'Tarikan Ramboid',
                      image: 'assets/image/punggung4.jpg',
                      times: 'x14',
                    ),
                    RecoverContent(
                      title: 'Angkat Lengan ke Samping',
                      image: 'assets/image/punggung5.jpg',
                      times: '00:16',
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
