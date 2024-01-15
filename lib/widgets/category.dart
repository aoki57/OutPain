import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:tubes/pages/category/book.dart';
import 'package:tubes/pages/category/terapi.dart';
import 'package:tubes/pages/clinic.dart';
import 'package:tubes/pages/category/recovery.dart';

class Category extends StatelessWidget {
  const Category({
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
            "Kategori",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                  onTap: () => Get.to(() => const Terapi()),
                  child: CategoryItem(
                    icon: Icons.spa,
                    title: 'Terapi',
                  )),
              InkWell(
                  onTap: () => Get.to(() => const Recovery()),
                  child: CategoryItem(
                    icon: Icons.directions_run,
                    title: 'Pemulihan',
                  )),
              InkWell(
                  onTap: () => Get.to(() => const Book()),
                  child: CategoryItem(
                    icon: Icons.book,
                    title: 'Buku',
                  )),
              InkWell(
                  onTap: () => Get.to(() => const Clinic()),
                  child: CategoryItem(
                    icon: Icons.local_hospital,
                    title: 'Klinik',
                  )),
            ],
          ),
        ],
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.icon,
    required this.title,
  });

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(
            icon,
            size: 32,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(title),
      ],
    );
  }
}
