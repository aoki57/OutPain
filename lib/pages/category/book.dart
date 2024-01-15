import 'package:flutter/material.dart';
import 'package:tubes/model/book_model.dart';

class Book extends StatefulWidget {
  const Book({super.key});

  @override
  State<Book> createState() => _BookState();
}

class _BookState extends State<Book> {
  static List<BookModel> main_article_list = [
    BookModel("Terapi Nonfarmakologi Nyeri Padapersalinan:Systematic Review",
        2018 - 06 - 27, "assets/image/book1.jpg"),
    BookModel(
        "Terapi Non-Farmakologi untuk Mengurangi Nyeri Persalinan Sectio Caesarea: Systematic Review",
        2023 - 07 - 31,
        "assets/image/book2.jpg"),
    BookModel(
        "The Use of Natural Ingredients as Therapy of Dysmenorrhea Pain in Adolescents: Article Review",
        2023 - 1 - 7,
        "assets/image/book3.jpg"),
    BookModel(
        "Faktor-Faktor yang Mempengaruhi Nyeri Punggung Ibu Hamil Trimester III: Literatur Review",
        2022 - 02 - 01,
        "assets/image/book4.jpg"),
    BookModel(
        "Penerapan Terapi Murottal pada Respon Fisiologis Nyeri Pasien yang Terpasang Ventilator: Literature Review",
        2022 - 9 - 28,
        "assets/image/book5.jpg"),
  ];

  List<BookModel> display_list = List.from(main_article_list);

  void updateList(String value) {
    setState(() {
      display_list = main_article_list
          .where((element) => element.article_title!
              .toLowerCase()
              .contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Buku"),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Search for book",
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
                          display_list[index].article_title!,
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          '${display_list[index].article_release_year}',
                          style: TextStyle(color: Colors.black),
                        ),
                        trailing: Icon(Icons.arrow_forward_ios_rounded),
                        leading:
                            Image.asset(display_list[index].article_cover_url!),
                      ),
                    ),
            ),
          ],
        ),
      )),
    );
  }
}
