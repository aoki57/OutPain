import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:tubes/pages/category/essensial_oil.dart';
import 'package:tubes/pages/category/healing.dart';
import 'package:tubes/pages/category/kompres.dart';
import 'package:tubes/pages/category/nafas_dalam.dart';

class Terapi extends StatelessWidget {
  const Terapi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Terapi"),
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
                  "Terapi untuk mengatasi nyeri",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () => Get.to(() => const NafasDalam()),
                  child: TerapiNyeri(
                    title: 'Relaksasi Nafas dalam',
                    image: 'assets/image/nafas.jpg',
                  ),
                ),
                InkWell(
                  onTap: () => Get.to(() => const EssensialOil()),
                  child: TerapiNyeri(
                    title: 'Essensial Oil',
                    image: 'assets/image/oil.jpg',
                  ),
                ),
                InkWell(
                  onTap: () => Get.to(() => const Kompres()),
                  child: TerapiNyeri(
                    title: 'Kompres',
                    image: 'assets/image/kompres.jpg',
                  ),
                ),
                InkWell(
                  onTap: () => Get.to(() => const Healing()),
                  child: TerapiNyeri(
                    title: 'Self Healing',
                    image: 'assets/image/healing.jpg',
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

class TerapiNyeri extends StatelessWidget {
  const TerapiNyeri({
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
