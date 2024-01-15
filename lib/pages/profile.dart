import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tubes/pages/edit_profile.dart';
import 'package:tubes/pages/welcome.dart';
import 'package:tubes/widgets/profile_menu.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text("Profile"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                Stack(
                  children: [
                    SizedBox(
                      width: 120,
                      height: 120,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset(
                          "assets/image/man.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Color(0xff1F41BB),
                          ),
                          child: const Icon(
                            Icons.edit,
                            size: 18.0,
                            color: Colors.white,
                          )),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "John Smith",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Text("johnsmith@gmail.com"),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 200,
                  child: ElevatedButton(
                    onPressed: () => Get.to(() => const EditProfile()),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff1F41BB),
                        side: BorderSide.none,
                        shape: StadiumBorder()),
                    child: Padding(
                      padding: const EdgeInsets.all(14),
                      child: Text("Edit Profile"),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Divider(),
                SizedBox(
                  height: 10,
                ),
                ProfileMenu(
                  title: "Histori Recovery",
                  icon: Icons.history,
                  onPress: () {},
                ),
                ProfileMenu(
                  title: "Bookmark",
                  icon: Icons.bookmark,
                  onPress: () {},
                ),
                Divider(),
                SizedBox(
                  height: 20,
                ),
                ProfileMenu(
                  title: "Settings",
                  icon: Icons.settings,
                  onPress: () {},
                ),
                ProfileMenu(
                  title: "Logout",
                  icon: Icons.exit_to_app,
                  textColor: Colors.red,
                  endIcon: false,
                  onPress: () {
                    FirebaseAuth.instance.signOut();
                    Get.to(() => const Welcome());
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
