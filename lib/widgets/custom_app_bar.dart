import 'package:bilin/screens/login_page.dart';
import 'package:flutter/material.dart';
import 'package:bilin/constants/constants_text_styles.dart';
import 'package:bilin/widgets/custom_rounded_button.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  MyAppBar({
    required this.isLandingPage,
    Key? key,
  }) : super(key: key);
  @override
  bool isLandingPage = false;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        'Bilin',
        style: appBarTexStyle,
      ),
      backgroundColor: Colors.white,
      actions: <Widget>[
        TextButton(
          onPressed: () {},
          child: const Text(
            'Home',
            style: appBarTexStyle,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            'Get Involved',
            style: appBarTexStyle,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            'Knowledge Hub',
            style: appBarTexStyle,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            'About Us',
            style: appBarTexStyle,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            'FAQ',
            style: appBarTexStyle,
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.3,
          color: Colors.white,
        ),
        // TextButton(
        //   onPressed: () {},
        //   child: const Text(
        //     "Login",
        //     style: TextStyle(fontSize: 20, color: Colors.black),
        //   ),
        // ),
        isLandingPage
            ? CustomRoundedButton(
                onTap: () {
                  Navigator.pushNamed(context, LoginPage.id);
                  print('going to login page');
                },
                text: "Login",
                colour: Colors.white,
                textStyle: TextStyle(color: Colors.black, fontSize: 20.0),
              )
            : CustomRoundedButton(
                onTap: () {}, text: " ", colour: Colors.transparent),
        SizedBox(
          width: 40,
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
