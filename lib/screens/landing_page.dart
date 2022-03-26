import 'package:flutter/material.dart';
import 'package:bilin/widgets/custom_rounded_button.dart';
import 'package:bilin/constants/constants_colors.dart';
import 'package:bilin/constants/constants_text_styles.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:bilin/widgets/login_page_card.dart';

class landingPage extends StatelessWidget {
  const landingPage({Key? key}) : super(key: key);
  static String id = 'landingPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
          TextButton(
            onPressed: () {},
            child: const Text(
              "Login",
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          ),
          SizedBox(
            width: 40,
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 1,
            color: Colors.white,
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      color: Colors.white,
                      height: MediaQuery.of(context).size.height * 0.95,
                      width: MediaQuery.of(context).size.width * 0.4,
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.all(100),
                        child: Column(
                          children: <Widget>[
                            const Padding(
                              padding: EdgeInsets.symmetric(vertical: 20.0),
                              child: Text(
                                'Get Involved in Solving Hunger',
                                textAlign: TextAlign.left,
                                style: landingPageBold,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 8.0),
                              child: Text(
                                "By empowering those who empower others, we at Bilin are trying to spark the Filipino spirit of Bayanihan like never before",
                                textAlign: TextAlign.left,
                                style: landingPageParagraph,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 8.0, bottom: 8.0, right: 8.0),
                                  child: CustomRoundedButton(
                                    colour: bilinOrange,
                                    onTap: () {},
                                    text: 'Partner with us',
                                    textStyle: customButtonTextStyle.copyWith(
                                        color: Colors.white),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: CustomRoundedButton(
                                    colour: bilinOrangeLowOpacity,
                                    onTap: () {},
                                    text: "Donate",
                                    textStyle: customButtonTextStyle,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    children: [
                      Container(
                        color: Colors.white,
                        height: MediaQuery.of(context).size.height * 0.95,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            alignment: Alignment.topCenter,
            color: Colors.blue,
            height: MediaQuery.of(context).size.height * 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Padding(
                  padding: EdgeInsets.all(50.0),
                  child: Text(
                    'How You Can Help',
                    textAlign: TextAlign.center,
                    style: landingPageBold,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    LandingPageCard(
                      icon: Icons.pin,
                    ),
                    LandingPageCard(
                      icon: MaterialCommunityIcons.box_cutter,
                    ),
                    LandingPageCard(
                      icon: MaterialCommunityIcons.hand_peace,
                    ),
                    LandingPageCard(
                      icon: MaterialCommunityIcons.heart_box,
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            color: Colors.amber,
            height: MediaQuery.of(context).size.height * 1,
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  color: Colors.blue,
                  child: Column(
                    children: <Widget>[
                      Container(
                        color: Colors.red,
                        height: MediaQuery.of(context).size.height * 1,
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: const Icon(
                          MaterialCommunityIcons.globe_model,
                          size: 600,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 40.0),
                        child: Text(
                          "Our Mission",
                          style: landingPageBold,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.3,
                        child: const Text(
                          "[Placeholder only] We at Bilin are trying to change this problem, for a better, hunger-free tomorrow.  The Bilin app is a platform that makes the donation process easier, allowing forward-thinking people and businesses to connect with nonprofits and community pantries that need their help the most. We are prioritising the donation of surplus food to tackle two of the most difficult SDGs there are: No Hunger and Food Waste.",
                          style: landingPageParagraph,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 40.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Text('19'),
                                Text("Partnered with Us"),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Text('19'),
                                Text("Partnered with Us"),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 1,
            color: Colors.green,
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.1,
                      ),
                      Flexible(
                        child: Center(
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * 0.2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const <Widget>[
                                Text("Bilin"),
                                Text(
                                  'Bilin is a platform that makes the donation process easier, allowing forward-thinking people and businesses to connect with nonprofits and community pantries that need their help the most.',
                                  style: landingPageParagraph,
                                  textAlign: TextAlign.justify,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.height * 0.2,
                      ),
                      Flexible(
                        child: Center(
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * 0.075,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const <Widget>[
                                Text(
                                  "Navigate",
                                  style: landingPageParagraph,
                                  textAlign: TextAlign.left,
                                ),
                                Text(
                                  'Home',
                                  style: landingPageParagraph,
                                  textAlign: TextAlign.left,
                                ),
                                Text(
                                  'Knowledge HUb',
                                  style: landingPageParagraph,
                                  textAlign: TextAlign.left,
                                ),
                                Text(
                                  'About Us',
                                  style: landingPageParagraph,
                                  textAlign: TextAlign.left,
                                ),
                                Text(
                                  'FAQ',
                                  style: landingPageParagraph,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.height * 0.1,
                      ),
                      Flexible(
                        child: Center(
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * 0.075,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const <Widget>[
                                Text(
                                  'Get Involved',
                                  style: landingPageParagraph,
                                ),
                                Text(
                                  'Locate',
                                  style: landingPageParagraph,
                                ),
                                Text(
                                  'Donate',
                                  style: landingPageParagraph,
                                ),
                                Text(
                                  'Volunteer',
                                  style: landingPageParagraph,
                                ),
                                Text(
                                  'Initiate',
                                  style: landingPageParagraph,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.height * 0.1,
                      ),
                      Flexible(
                        child: Center(
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * 0.075,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const <Widget>[
                                Text(
                                  'Quick Links',
                                  style: landingPageParagraph,
                                ),
                                Text(
                                  'Food Safety Guidelines',
                                  style: landingPageParagraph,
                                ),
                                Text(
                                  'Contact Us',
                                  style: landingPageParagraph,
                                ),
                                Text(
                                  'teamhiraya@gmail.com',
                                  style: landingPageParagraph,
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.2,
                  ),
                  Divider(
                    color: Colors.white,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Lorem Ipsum"),
                      Text("Lorem Ipsum"),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
