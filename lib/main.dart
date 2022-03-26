import 'package:bilin/constants/constants_colors.dart';
import 'package:bilin/screens/landing_page.dart';
import 'package:bilin/screens/login_page.dart';
import 'package:flutter/material.dart';
import 'package:bilin/screens/home.dart';

void main(List<String> args) {
  runApp(Bilin());
}

class Bilin extends StatefulWidget {
  const Bilin({Key? key}) : super(key: key);

  @override
  State<Bilin> createState() => _BilinState();
}

class _BilinState extends State<Bilin> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData().copyWith(
          colorScheme: ThemeData().colorScheme.copyWith(primary: bilinGreen)),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const landingPage(),
        LoginPage.id: (context) => LoginPage(),
        //landingPage.id: (context) => const landingPage(),
      },
    );
  }
}
