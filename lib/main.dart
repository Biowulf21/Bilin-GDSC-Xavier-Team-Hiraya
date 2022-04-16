import 'package:bilin/constants/constants_colors.dart';
import 'package:bilin/screens/dashboard.dart';
import 'package:bilin/screens/events_page.dart';
import 'package:bilin/screens/landing_page.dart';
import 'package:bilin/screens/login_page.dart';
import 'package:bilin/screens/signup_donor.dart';
import 'package:bilin/screens/signup_partner.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyDJPYO9Qo6ORoLV4E9ThEaflElXYQqIpcQ",
        authDomain: "bilin-346803.firebaseapp.com",
        projectId: "bilin-346803",
        storageBucket: "bilin-346803.appspot.com",
        messagingSenderId: "120490219952",
        appId: "1:120490219952:web:715be4f2d89230305e1e75",
        measurementId: "G-7HZ3GB6X6X"),
  );
  runApp(const Bilin());
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
        LoginPage.id: (context) => const LoginPage(),
        SignUpDonorPage.id: (context) => const SignUpDonorPage(),
        SignUpPartnerPage.id: (context) => const SignUpPartnerPage(),
        Dashboard.id: (context) => const Dashboard(),
        EventsPage.id: (context) => const EventsPage()
      },
    );
  }
}
