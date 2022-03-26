import 'package:bilin/screens/login_page.dart';
import 'package:flutter/material.dart';
import 'package:bilin/widgets/custom_rounded_button.dart';
import 'package:bilin/constants/constants_colors.dart';
import 'package:bilin/constants/constants_text_styles.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:bilin/widgets/login_page_card.dart';
import 'package:bilin/widgets/custom_app_bar.dart';

class landingPage extends StatelessWidget {
  const landingPage({Key? key}) : super(key: key);
  static String id = 'landingPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        isLandingPage: true,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 1,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
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
                        padding: const EdgeInsets.only(
                            top: 100, bottom: 40, left: 50.0),
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.1,
                            ),
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
                Column(
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10.0, right: 40.0),
                        child: Container(
                          color: Colors.white,
                          height: MediaQuery.of(context).size.height * 0.95,
                          child: Image.asset(
                            'assets/images/landingpage/donation.png',
                            height: 200,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            alignment: Alignment.topCenter,
            color: Colors.white,
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
                  children: <Widget>[
                    LandingPageCard(
                      icon:
                          Image.asset('assets/images/landingpage/locate1.png'),
                    ),
                    LandingPageCard(
                      icon:
                          Image.asset('assets/images/landingpage/donate1.png'),
                    ),
                    LandingPageCard(
                      icon: Image.asset(
                          'assets/images/landingpage/volunteer1.png'),
                    ),
                    LandingPageCard(
                      icon: Image.asset(
                          'assets/images/landingpage/initiate1.png'),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            color: Colors.white,
            height: MediaQuery.of(context).size.height * 1,
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  color: Colors.blue,
                  child: Column(
                    children: <Widget>[
                      Container(
                          color: Colors.white,
                          height: MediaQuery.of(context).size.height * 1,
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: Image.asset(
                            'assets/images/landingpage/ph.png',
                            width: 20.0,
                            height: 20.0,
                          ))
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
            height: MediaQuery.of(context).size.height * 0.5,
            color: Colors.green,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
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
                                  Text(
                                    "Bilin",
                                    style: h2,
                                  ),
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
                                    style: h3,
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
                                    style: h3,
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
                                    style: h3,
                                  ),
                                  Text(
                                    'Food Safety Guidelines',
                                    style: landingPageParagraph,
                                  ),
                                  Text(
                                    'Contact Us',
                                    style: h3,
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
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
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
