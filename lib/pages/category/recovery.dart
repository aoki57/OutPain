import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:tubes/pages/category/nyeri_kaki.dart';
import 'package:tubes/pages/category/nyeri_leher.dart';
import 'package:tubes/pages/category/nyeri_punggung.dart';
import 'package:tubes/pages/category/nyeri_tangan.dart';

class Recovery extends StatelessWidget {
  const Recovery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pemulihan"),
        centerTitle: true,
      ),
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Tipe Nyeri",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () => Get.to(() => const NyeriLeher()),
                  child: RecoverNyeri(
                    title: 'Nyeri Leher',
                    image: 'assets/image/nyeri1.jpg',
                  ),
                ),
                InkWell(
                  onTap: () => Get.to(() => const NyeriTangan()),
                  child: RecoverNyeri(
                    title: 'Nyeri Tangan',
                    image: 'assets/image/nyeri2.jpg',
                  ),
                ),
                InkWell(
                  onTap: () => Get.to(() => const NyeriKaki()),
                  child: RecoverNyeri(
                    title: 'Nyeri Kaki',
                    image: 'assets/image/nyeri3.jpg',
                  ),
                ),
                InkWell(
                  onTap: () => Get.to(() => const NyeriPunggung()),
                  child: RecoverNyeri(
                    title: 'Nyeri Punggung',
                    image: 'assets/image/nyeri4.png',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class RecoverNyeri extends StatelessWidget {
  const RecoverNyeri({
    super.key,
    required this.title,
    required this.image,
  });

  final String title, image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 180,
            padding: EdgeInsets.all(1),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: Colors.grey.shade400,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Image.asset(
                      image,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    color: Colors.black.withOpacity(.5),
                    width: double.infinity,
                    height: double.infinity,
                  ),
                  Container(
                    padding: EdgeInsets.all(16),
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      title,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
