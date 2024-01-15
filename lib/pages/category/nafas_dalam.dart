import 'package:flutter/material.dart';
import 'package:tubes/widgets/recover_header.dart';
import 'package:tubes/widgets/terapi_content.dart';

class NafasDalam extends StatelessWidget {
  const NafasDalam({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RecoverHeader(
              title: 'Relaksasi Nafas Dalam',
              image: 'assets/image/nafas.jpg',
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
                            "Langkah-langkah",
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
                      text: '1. Duduk dengan tenang dalam posisi nyaman',
                    ),
                    TerapiContent(text: '2. Tutup Mata'),
                    TerapiContent(
                        text: '3. Ciptakan rasa relax pada otot-otot Anda'),
                    TerapiContent(text: '4. Kosongkan pikiran'),
                    TerapiContent(
                        text:
                            '5. Atur pernafasan dengan cara bernafas dengan hidung dan mengeluarkannya dengan mulut, lalu hitunglah dengan mulut, lakukan secara berulang-ulang.'),
                    TerapiContent(
                        text:
                            '6. Saat menarik dan melepaskan nafas lewat mulut rasakan perubahan dan sensasi pada dada dan anggota tubuh yang lain.'),
                    TerapiContent(
                        text:
                            '7. Lakukan secara berulang-ulang selama 10 menit.'),
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
