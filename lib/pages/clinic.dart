import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tubes/model/clinic_model.dart';
import 'package:url_launcher/url_launcher.dart';

class Clinic extends StatefulWidget {
  const Clinic({super.key});

  @override
  State<Clinic> createState() => _ClinicState();
}

class _ClinicState extends State<Clinic> {
  static List<ClinicModel> main_clinic_list = [
    ClinicModel(
        "Klinik Umum Arteri",
        "Jl. Soekarno Hatta No.65, Palebon, Kec. Pedurungan, Kota Semarang, Jawa Tengah 50246",
        "https://streetviewpixels-pa.googleapis.com/v1/thumbnail?panoid=6jE02J5MG4YPT0Xe5rH7dA&cb_client=search.gws-prod.gps&yaw=205.49918&pitch=0&thumbfov=100&w=520&h=175",
        "https://maps.app.goo.gl/EfgLuP1WtJ5N8wMD9"),
    ClinicModel(
        "Klinik Pratama Wijaya Kusuma",
        "Jl. Sendangguwo Raya, RT.6/RW.10, Gemah, Kec. Pedurungan, Kota Semarang, Jawa Tengah 50191",
        "https://streetviewpixels-pa.googleapis.com/v1/thumbnail?panoid=2qsI4NKOwj3Lr1-9KP7Mug&cb_client=search.gws-prod.gps&yaw=206.86247&pitch=0&thumbfov=100&w=520&h=175",
        "https://maps.app.goo.gl/kSJSSdFTeEJY7nVr6"),
    ClinicModel(
        "Klinik Harmoni Karya",
        "Jl. Kedungmundu No.161A, Sendangguwo, Kec. Tembalang, Kota Semarang, Jawa Tengah 50273",
        "https://lh3.googleusercontent.com/p/AF1QipMHMHsw3i_Z2jw5XaaDpYv3ZJH5j-XoSFMgC3uc=s1360-w1360-h1020",
        "https://maps.app.goo.gl/9GVFXyBewkSEUKjE9"),
    ClinicModel(
        "Klinik PHC Pedurungan",
        "Jl. Wolter Monginsidi, Pedurungan Tengah, Kec. Pedurungan, Kota Semarang, Jawa Tengah 50192",
        "https://lh3.googleusercontent.com/p/AF1QipPckEGRgsfisEzk98T-BWiM3A0lguUc2lvRsds2=s1360-w1360-h1020",
        "https://maps.app.goo.gl/6rVqfoAbwuLisPNq5"),
    ClinicModel(
        "Klinik Kesehatan",
        "Jl. Soekarno Hatta No.195, Palebon, Kec. Pedurungan, Kota Semarang, Jawa Tengah 50246",
        "https://streetviewpixels-pa.googleapis.com/v1/thumbnail?panoid=AzasbFYPRfOXnvQFb5kaOQ&cb_client=search.gws-prod.gps&yaw=327.49115&pitch=0&thumbfov=100&w=520&h=175",
        "https://maps.app.goo.gl/DJqkKQF9JnWjc8MX8"),
  ];

  List<ClinicModel> display_list = List.from(main_clinic_list);

  void updateList(String value) {
    setState(() {
      display_list = main_clinic_list
          .where(
            (element) =>
                element.clinic_name!
                    .toLowerCase()
                    .contains(value.toLowerCase()) ||
                element.clinic_address!
                    .toLowerCase()
                    .contains(value.toLowerCase()),
          )
          .toList();
    });
  }

  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
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
        title: Text("Search Clinic"),
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
              "Search for clinic",
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
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () => _launchURL(display_list[index].url!),
                          child: Container(
                            padding: EdgeInsets.all(8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: double.infinity,
                                  height: 200,
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Positioned.fill(
                                        child: Image.network(
                                          display_list[index].clinic_image!,
                                          fit: BoxFit.cover,
                                        ),
                                      )),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  display_list[index].clinic_name!,
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(display_list[index].clinic_address!),
                                SizedBox(
                                  height: 20,
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
            ),
          ],
        ),
      )),
    );
  }
}
