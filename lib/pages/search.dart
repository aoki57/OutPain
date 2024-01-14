import 'package:flutter/material.dart';
import 'package:tubes/model/article_model.dart';
import 'package:tubes/widgets/news.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  static List<ArticleModel> main_article_list = [
    ArticleModel(
        "Terapi Nonfarmakologi Nyeri Padapersalinan:Systematic Review",
        2018 - 06 - 27,
        "https://journal.um-surabaya.ac.id/public/journals/17/cover_issue_324_id_ID.jpg"),
    ArticleModel(
        "Terapi Non-Farmakologi untuk Mengurangi Nyeri Persalinan Sectio Caesarea: Systematic Review",
        2023 - 07 - 31,
        "http://journal2.stikeskendal.ac.id/public/journals/2/cover_issue_40_en_US.jpg"),
    ArticleModel(
        "The Use of Natural Ingredients as Therapy of Dysmenorrhea Pain in Adolescents: Article Review",
        2023 - 1 - 7,
        "https://journal-jps.com/new/public/journals/1/submission_8_8_coverImage_en_US.jpg"),
    ArticleModel(
        "Faktor-Faktor yang Mempengaruhi Nyeri Punggung Ibu Hamil Trimester III: Literatur Review",
        2022 - 02 - 01,
        "https://journal.ibrahimy.ac.id/public/journals/3/cover_issue_157_en_US.jpg"),
    ArticleModel(
        "Penerapan Terapi Murottal pada Respon Fisiologis Nyeri Pasien yang Terpasang Ventilator: Literature Review",
        2022 - 9 - 28,
        "http://journal2.stikeskendal.ac.id/public/journals/1/cover_issue_10_en_US.jpg"),
  ];

  List<ArticleModel> display_list = List.from(main_article_list);

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
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.list_outlined,
            )),
        title: Text("Search"),
        centerTitle: true,
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10),
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.settings,
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
                        leading: Image.network(
                            display_list[index].article_cover_url!),
                      ),
                    ),
            ),
          ],
        ),
      )),
    );
  }
}
