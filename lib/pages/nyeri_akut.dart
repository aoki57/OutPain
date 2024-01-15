import 'package:flutter/material.dart';
import 'package:tubes/widgets/recover_header.dart';
import 'package:tubes/widgets/terapi_content.dart';

class NyeriAkut extends StatelessWidget {
  const NyeriAkut({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RecoverHeader(
              title: 'Nyeri Akut',
              image: 'assets/image/nyeri1.jpg',
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
                            "Definisi",
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
                            'Nyeri akut adalah nyeri yang terjadi setelah cidera akut, penyakit atau intervensi bedah dan memiliki awitan yang cepat dengan ukuran intensitas yang bervariasi (ringan sampai berat) dan berlangsung untuk waktu singkat.'),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 12),
                          child: Text(
                            "Gejala",
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
                            'Nyeri akut pasca operasi terkadang disertai oleh aktivasi system saraf simpatis yang akan memperlihatkan gejala-gejala seperti peningkatan respirasi, peningkatan tekanan darah, peningkatan denyut jantung, diaphoresis dan dilatasi pupil. Pasien pasca operasi yang mengalami nyeri akut biassanya juga akan memperlihatkan respon emosi dan perilaku seperti menangis, mengerang kesakitan, mengerutkan wajah atau menyeringai.'),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 12),
                          child: Text(
                            "Bentuk",
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
                            'Bentuk nyeri akut dapat berupa nyeri somatik luar (nyeri tajam di kulit, subkutis dan mukosa), nyeri somatik dalam (nyeri tumpul pada otot rangka, sendi dan jaringan ikat), nyeri visceral (nyeri akibat disfungsi organ visceral).'),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 12),
                          child: Text(
                            "Pengobatan",
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
                            'Ada berbagai modalitas pengobatan nyeri akut pasca operasi yaitu: '),
                    TerapiContent(text: '1. Modalitas fisik'),
                    TerapiContent(
                        text:
                            'Modalitas fisik berupa latihan fisik, pijatan, vibrasi, stimulasi kutan TENS, tusuk jarum, imobilisasi, serta perbaikan posisi.'),
                    TerapiContent(text: '2. Modalitas kognitif-behavior'),
                    TerapiContent(text: '3. Modalitas invasif'),
                    TerapiContent(
                        text:
                            'Modalitas invasif berupa radioterapi, pembedahan, blok saraf.'),
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
