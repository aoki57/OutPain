import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
              InkWell(
                onTap: () {
                  _launchURL(
                      'https://health.detik.com/kebugaran/d-6995400/6-obat-nyeri-sendi-secara-alami-salah-satunya-adalah-jahe');
                },
                child: NewsItem(
                  image:
                      'https://akcdn.detik.net.id/community/media/visual/2019/08/02/15c6094c-c8a9-420e-8caa-cfdbc607aecf_169.jpeg?w=700&q=90',
                  title:
                      "6 Obat Nyeri Sendi Secara AIami, SaIah Satunya AdaIah Jahe",
                ),
              ),
              InkWell(
                onTap: () {
                  _launchURL(
                      'https://health.detik.com/kebugaran/d-6927677/sering-nyeri-sendi-habis-olahraga-mungkin-ini-penyebabnya');
                },
                child: NewsItem(
                  image:
                      'https://akcdn.detik.net.id/community/media/visual/2019/08/02/de1d85cf-090f-46a3-856f-74956027aa9b_169.jpeg?w=700&q=90',
                  title:
                      "Sering Nyeri Sendi Habis Olahraga? Mungkin Ini Penyebabnya",
                ),
              ),
              InkWell(
                onTap: () {
                  _launchURL(
                      'https://health.detik.com/obat/indomethacin-d-6773142');
                },
                child: NewsItem(
                  image:
                      'https://akcdn.detik.net.id/community/media/visual/2019/08/15/f557797b-1ecf-4599-984c-0aa938f9d861_169.jpeg?w=700&q=90',
                  title: "Indomethacin",
                ),
              ),
              InkWell(
                onTap: () {
                  _launchURL(
                      'https://health.detik.com/berita-detikhealth/d-6723450/12-obat-nyeri-sendi-yang-ampuh-bisa-ditemukan-di-apotek');
                },
                child: NewsItem(
                  image:
                      'https://akcdn.detik.net.id/community/media/visual/2019/08/04/56db367e-ec43-49f8-b727-72b6168826cf_169.jpeg?w=700&q=90',
                  title:
                      "12 Obat Nyeri Sendi yang Ampuh, Bisa Ditemukan di Apotek",
                ),
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
              child: Image.network(
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
                  fontSize: 20,
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

_launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
