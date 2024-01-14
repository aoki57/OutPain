import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:tubes/auth/auth_repository/auth_repository.dart';
import 'package:tubes/firebase_options.dart';
import 'package:tubes/pages/edit_profile.dart';
import 'package:tubes/pages/login/login.dart';
import 'package:tubes/pages/register/register.dart';
import 'package:tubes/pages/splash_screen.dart';
import 'package:tubes/pages/welcome.dart';
import 'package:tubes/widgets/nav.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((value) => Get.put(AuthRepository()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tubes',
      theme: ThemeData(
        fontFamily: 'Montserrat',
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.grey.shade100,
          foregroundColor: Colors.black,
          elevation: 0,
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: false,
      ),
      home: const CircularProgressIndicator(),
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => Splash(),
      //   '/welcome': (context) => Welcome(),
      //   '/login': (context) => Login(),
      //   '/register': (context) => Register(),
      //   '/nav': (context) => Navigation(),
      // },
    );
  }
}
