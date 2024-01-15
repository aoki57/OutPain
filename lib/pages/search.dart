import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:tubes/model/article_model.dart';
import 'package:url_launcher/url_launcher.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  List<ArticleModel> display_list = [];
  bool ascendingOrder = true;

  static List<ArticleModel> main_article_list = [];

  void updateList(String value) {
    setState(() {
      display_list = main_article_list
          .where((element) =>
              element.title!.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  Future<void> fetchNews() async {
    final response = await http.get(
      Uri.parse(
          'https://newsapi.org/v2/top-headlines?country=id&category=health&apiKey=622455a5ceb8461cad3c0f3ef22c88d6'),
    );

    if (!mounted) {
      return;
    }

    if (response.statusCode == 200) {
      Map<String, dynamic> data = json.decode(response.body);
      if (data['status'] == 'ok') {
        List<dynamic> articles = data['articles'];
        main_article_list = articles
            .map((article) => ArticleModel(
                  article['title'],
                  article['publishedAt'],
                  article['url'],
                ))
            .toList();

        if (mounted) {
          setState(() {
            display_list = List.from(main_article_list);
            toggleSortOrder();
          });
        }
      }
    } else {
      throw Exception('Failed to load news');
    }
  }

  void launchNews(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  void toggleSortOrder() {
    setState(() {
      ascendingOrder = !ascendingOrder;
      display_list.sort((a, b) => ascendingOrder
          ? a.publishedAt!.compareTo(b.publishedAt!)
          : b.publishedAt!.compareTo(a.publishedAt!));
    });
  }

  void sortList() {
    setState(() {
      display_list.sort((a, b) => ascendingOrder
          ? a.publishedAt!.compareTo(b.publishedAt!)
          : b.publishedAt!.compareTo(a.publishedAt!));
    });
  }

  @override
  void initState() {
    super.initState();
    fetchNews();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Get.back(),
            icon: Icon(
              Icons.arrow_back,
            )),
        title: Text(
          "Search",
        ),
        centerTitle: true,
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
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                "Search for article",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                onChanged: (value) => updateList(value),
                decoration: InputDecoration(
                  isDense: true,
                  contentPadding: EdgeInsets.symmetric(vertical: 10),
                  prefixIcon: Icon(Icons.search_rounded),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(32),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(32),
                  ),
                  hintText: 'Search...',
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      sortList();
                      toggleSortOrder();
                    },
                    icon: Icon(Icons.calendar_today),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                  child: display_list.length == 0
                      ? Center(
                          child: Text(
                            "No result found",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      : ListView.builder(
                          itemCount: display_list.length,
                          itemBuilder: (context, index) => ListTile(
                            contentPadding: EdgeInsets.all(8),
                            title: Text(
                              display_list[index].title!,
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            subtitle: Text(
                              '${display_list[index].publishedAt}',
                              style: TextStyle(color: Colors.black),
                            ),
                            onTap: () {
                              launchNews(display_list[index].url!);
                            },
                          ),
                        )),
            ],
          ),
        ),
      ),
    );
  }
}
