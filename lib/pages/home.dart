import 'package:flutter/material.dart';
import 'package:tubes/widgets/category.dart';
import 'package:tubes/widgets/nyeri.dart';
import 'package:tubes/widgets/topbar.dart';
import 'package:tubes/widgets/news.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text(
          "OutPain",
          style: TextStyle(fontFamily: 'Satisfy'),
        ),
        actions: [
          Container(
            padding: EdgeInsets.all(10),
            width: 60,
            height: 60,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  "assets/image/man.jpg",
                  fit: BoxFit.cover,
                )),
          )
        ],
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TopBar(),
              Nyeri(),
              Category(),
              News(),
            ],
          ),
        ),
      ),
    );
  }
}
