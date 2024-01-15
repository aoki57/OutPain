import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:tubes/pages/category/nyeri_kaki.dart';
import 'package:tubes/pages/category/nyeri_punggung.dart';
import 'package:tubes/pages/category/nyeri_tangan.dart';
import 'package:tubes/pages/nyeri_akut.dart';

class Nyeri extends StatelessWidget {
  const Nyeri({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
            height: 12,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                InkWell(
                  onTap: () => Get.to(() => const NyeriAkut()),
                  child: NyeriItem(
                    image: 'assets/image/nyeri1.jpg',
                    title: 'Nyeri Akut',
                  ),
                ),
                InkWell(
                  onTap: () => Get.to(() => const NyeriTangan()),
                  child: NyeriItem(
                    image: 'assets/image/nyeri2.jpg',
                    title: 'Nyeri Kronis',
                  ),
                ),
                InkWell(
                  onTap: () => Get.to(() => const NyeriKaki()),
                  child: NyeriItem(
                    image: 'assets/image/nyeri3.jpg',
                    title: 'Nyeri Nosiseptif',
                  ),
                ),
                InkWell(
                  onTap: () => Get.to(() => const NyeriPunggung()),
                  child: NyeriItem(
                    image: 'assets/image/nyeri4.png',
                    title: 'Nyeri Neurogenik',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class NyeriItem extends StatelessWidget {
  const NyeriItem({
    super.key,
    required this.title,
    required this.image,
  });

  final String title, image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16),
      child: Column(
        children: [
          Container(
            width: 180,
            height: 240,
            padding: EdgeInsets.all(1),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32),
              color: Colors.grey.shade400,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(32),
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Image.asset(
                      image,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: double.infinity,
                    color: Colors.black.withOpacity(.5),
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
