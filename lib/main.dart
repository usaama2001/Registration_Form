import 'package:flutter/material.dart';
import 'package:registration_form/pages/home_page.dart';
import 'package:registration_form/pages/registration_page.dart';

void main() {
  runApp(const MainPage());
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: {
        '/homePage': (context) => HomePage(),
        '/registrationPage': (context) => RegistratioinPage(),
        // '/resultPage': (context) => ResultPage(),
      },
    );
  }
}
