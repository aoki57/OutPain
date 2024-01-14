import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class News extends StatelessWidget {
  const News({
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
            "Berita",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 12,
          ),
          CarouselSlider(
            items: [
              NewsItem(
                image: 'assets/image/nyeri1.jpg',
                title: "Nyeri Satu",
              ),
              NewsItem(
                image: 'assets/image/nyeri2.jpg',
                title: "Nyeri Dua",
              ),
              NewsItem(
                image: 'assets/image/nyeri3.jpg',
                title: "Nyeri Tiga",
              ),
              NewsItem(
                image: 'assets/image/nyeri4.png',
                title: "Nyeri Empat",
              ),
            ],
            options: CarouselOptions(
              height: 200,
              enableInfiniteScroll: true,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 7),
              autoPlayAnimationDuration: Duration(milliseconds: 2000),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
            ),
          ),
        ],
      ),
    );
  }
}

class NewsItem extends StatelessWidget {
  const NewsItem({
    super.key,
    required this.image,
    required this.title,
  });

  final String image, title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      padding: EdgeInsets.all(1),
      width: 300,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.grey.shade400,
        borderRadius: BorderRadius.circular(12),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
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
                  shadows: [
                    Shadow(
                      blurRadius: 1,
                      color: Colors.grey,
                      offset: Offset(0, 0),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
