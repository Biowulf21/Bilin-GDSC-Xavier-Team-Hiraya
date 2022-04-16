import 'package:bilin/constants/constants_colors.dart';
import 'package:flutter/material.dart';
import 'package:bilin/widgets/login_widgets.dart';
import 'package:geolocator_web/geolocator_web.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  static String id = "/login_page";

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final PageController _desc = PageController();

  final PageController _forms = PageController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

    _desc.dispose();
    _forms.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Container(
              color: bilinGreen,
              child: WelcomeToBilinWidget(
                onPress: () {},
                paragraph:
                    "Bilin is a platform that makes the donation process easier, allowing forward-thinking people and businesses to connect with nonprofits and community pantries that need their help the most.",
                header: 'Welcome to Bilin',
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              child: LoginWidget(),
            ),
          )
        ],
      ),
    );
  }
}
