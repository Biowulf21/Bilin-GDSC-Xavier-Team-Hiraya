import 'dart:developer';
import 'package:bilin/models/donor.dart';
import 'package:bilin/screens/events_page.dart';
import 'package:bilin/services/location_service.dart';
import 'package:geolocator/geolocator.dart';
import 'package:bilin/constants/constants_colors.dart';
import 'package:bilin/screens/signup_donor.dart';
import 'package:bilin/screens/signup_partner.dart';
import 'package:bilin/widgets/custom_rounded_button.dart';
import 'package:bilin/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:bilin/constants/constants_text_styles.dart';
import 'package:firebase_auth_web/firebase_auth_web.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class LoginWidget extends StatefulWidget {
  LoginWidget({Key? key}) : super(key: key);

  @override
  Position? location;
  bool? hasLocation;
  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

    usernameController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Login',
              style: h1.copyWith(color: Colors.black),
            ),
            const SizedBox(
              height: 20.0,
            ),
            customTextField(
              isHidden: false,
              contoller: usernameController,
              labelText: "Username",
            ),
            const SizedBox(
              height: 20.0,
            ),
            customTextField(
              isHidden: true,
              contoller: passwordController,
              labelText: "Password",
            ),
            const SizedBox(
              height: 20.0,
            ),
            CustomRoundedButton(
              onTap: () async {
                try {
                  widget.hasLocation = await checkPositionPermission();
                  widget.location = await Geolocator.getCurrentPosition();
                  double latitude = widget.location!.latitude;
                  double longitude = widget.location!.longitude;
                  print("longitude is $longitude, latitude is $latitude");
                  FirebaseAuthWeb auth = FirebaseAuthWeb.instance;
                  print(
                      'email: ${usernameController.text.trim()} password: ${passwordController.text.trim()}');
                  auth.signInWithEmailAndPassword(
                      usernameController.text.trim(),
                      passwordController.text.trim());
                  if (widget.hasLocation == true && auth.currentUser != null) {
                    log('Loggin in');
                    print(
                        'username is: ${usernameController.text.toString().trim()} password is: ${passwordController.text.toString().trim()}');

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EventsPage(
                          latitude: latitude,
                          longitude: longitude,
                        ),
                      ),
                    );
                  }
                } catch (e) {
                  print(e);
                }
              },
              text: "Login",
              textStyle: h2.copyWith(color: Colors.white),
              colour: bilinGreen,
              height: 70,
              width: 300,
              roundness: 50.0,
            ),
            const SizedBox(
              height: 10.0,
            ),
            HaveAccountWidget(
                question: "Don't have an account?",
                clickableText: "Sign Up",
                onTap: () {})
          ],
        ),
      ),
    );
  }
}

enum Partner { NonProfit, Business }

class PartnerSignupWidget extends StatefulWidget {
  const PartnerSignupWidget({this.chosenPartnerType, Key? key})
      : super(key: key);

  final Partner? chosenPartnerType;

  @override
  State<PartnerSignupWidget> createState() => _PartnerSignupWidgetState();
}

class _PartnerSignupWidgetState extends State<PartnerSignupWidget> {
  final Partner? _partnerNonProf = Partner.NonProfit;

  final Partner? _partnerBusiness = Partner.NonProfit;

  final TextEditingController _email = TextEditingController();

  final TextEditingController _phoneNumber = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _email.dispose();
    _phoneNumber.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'SignUp as Partner',
              style: h1.copyWith(color: Colors.black),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                Flexible(
                  child: ListTile(
                    title: const Text("Nonprofit Org"),
                    leading: Radio(
                        value: Partner.NonProfit,
                        groupValue: widget.chosenPartnerType,
                        onChanged: (Partner? value) {}),
                  ),
                ),
                Flexible(
                  child: ListTile(
                    title: const Text("Business"),
                    leading: Radio(
                        value: Partner.Business,
                        groupValue: widget.chosenPartnerType,
                        onChanged: (Partner? value) {}),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            customTextField(
              isHidden: false,
              contoller: _email,
              labelText: "Email",
            ),
            const SizedBox(
              height: 20.0,
            ),
            customTextField(
              isHidden: false,
              contoller: _phoneNumber,
              labelText: "Phone Number",
            ),
            const SizedBox(
              height: 20.0,
            ),
            CustomRoundedButton(
              onTap: () {},
              text: "Sign Up",
              textStyle: h2.copyWith(color: Colors.white),
              colour: bilinGreen,
              height: 70,
              width: 300,
              roundness: 50.0,
            ),
            const SizedBox(
              height: 20.0,
            ),
            HaveAccountWidget(
                question: "Already have an account?",
                clickableText: "Login",
                onTap: () {})
          ],
        ),
      ),
    );
  }
}

class HaveAccountWidget extends StatelessWidget {
  HaveAccountWidget(
      {required this.question,
      required this.clickableText,
      required this.onTap,
      Key? key})
      : super(key: key);
  String question;
  String clickableText;
  VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(question),
        const SizedBox(
          width: 5.0,
        ),
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: onTap,
            child: Text(
              clickableText,
              style: const TextStyle(
                  color: bilinGreen, fontWeight: FontWeight.w600),
            ),
          ),
        )
      ],
    );
  }
}

class DonorSignUpWidget extends StatefulWidget {
  const DonorSignUpWidget({Key? key}) : super(key: key);

  @override
  State<DonorSignUpWidget> createState() => _DonorSignUpWidgetState();
}

class _DonorSignUpWidgetState extends State<DonorSignUpWidget> {
  final TextEditingController _username = TextEditingController();

  final TextEditingController _fullName = TextEditingController();

  final TextEditingController _email = TextEditingController();

  final TextEditingController _phoneNumber = TextEditingController();

  final TextEditingController _password = TextEditingController();

  final TextEditingController _confirmPassword = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose

    _username.dispose();
    _fullName.dispose();
    _email.dispose();
    _phoneNumber.dispose();
    _password.dispose();
    _password.dispose();
    _confirmPassword.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            customTextField(
                labelText: "Username", isHidden: false, contoller: _username),
            const SizedBox(height: 10.0),
            customTextField(
                labelText: "Full Name", isHidden: false, contoller: _fullName),
            const SizedBox(height: 10.0),
            customTextField(
                labelText: "Email Address", isHidden: false, contoller: _email),
            const SizedBox(height: 10.0),
            customTextField(
                labelText: "Phone Number",
                isHidden: false,
                contoller: _phoneNumber),
            const SizedBox(height: 10.0),
            customTextField(
                labelText: "Password", isHidden: false, contoller: _password),
            const SizedBox(height: 10.0),
            customTextField(
                labelText: "Confirm Password",
                isHidden: false,
                contoller: _confirmPassword),
            const SizedBox(height: 20.0),
            CustomRoundedButton(
              onTap: () {},
              text: "Sign Up",
              textStyle: h2.copyWith(color: Colors.white),
              colour: bilinGreen,
              height: 70,
              width: 300,
              roundness: 50.0,
            ),
            const SizedBox(height: 20.0),
            HaveAccountWidget(
                question: "Already have an account?",
                clickableText: "Log in",
                onTap: () async {
                  if (_password.text == _confirmPassword.text) {
                    await createDonorAccount(
                        _fullName.text.trim(),
                        _email.text.trim(),
                        _phoneNumber.text.trim(),
                        _username.text.trim());
                  }
                })
          ],
        ),
      ),
    );
  }

  Future<void> createDonorAccount(String fullname, String email,
      String phoneNumber, String username) async {
    FirebaseAuthWeb.instance.createUserWithEmailAndPassword(
        _email.text.trim(), _password.text.trim());

    final doc = FirebaseFirestore.instance.collection('donors').doc();
    final id = doc.id;
    final donor = Donor(
        id: id,
        fullName: fullname,
        email: email,
        phoneNumber: phoneNumber,
        username: username);
    final json = donor.toJson();
    await doc.set(json);
  }
}

class WelcomeToBilinWidget extends StatefulWidget {
  WelcomeToBilinWidget({
    required this.onPress,
    this.header,
    this.paragraph,
    Key? key,
  }) : super(key: key);

  String? paragraph;
  String? header;
  VoidCallback onPress;

  @override
  State<WelcomeToBilinWidget> createState() => _WelcomeToBilinWidgetState();
}

class _WelcomeToBilinWidgetState extends State<WelcomeToBilinWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 800,
            height: 600,
            color: bilinGreen,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    widget.header ?? "",
                    style: landingPageBold.copyWith(color: Colors.white),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                    child: Divider(
                      endIndent: 600,
                      color: Colors.white,
                      thickness: 4,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                    child: SizedBox(
                      width: 600,
                      child: Text(
                        widget.paragraph ?? "",
                        style:
                            landingPageParagraph.copyWith(color: Colors.white),
                        textAlign: TextAlign.justify,
                        softWrap: true,
                      ),
                    ),
                  ),
                  Wrap(
                    children: <Widget>[
                      CustomRoundedButton(
                        onTap: () {
                          setState(() {
                            log("Going to partner page");
                            Navigator.of(context)
                                .pushNamed(SignUpPartnerPage.id);
                          });
                        },
                        text: "Sign Up as our Partner",
                        textStyle:
                            landingPageParagraph.copyWith(color: Colors.white),
                        colour: bilinGreen,
                        width: 300,
                        height: 70,
                        borderColour: Colors.white,
                        roundness: 50,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      CustomRoundedButton(
                        onTap: () {
                          setState(() {
                            log("Going to donor page");
                            Navigator.of(context).pushNamed(SignUpDonorPage.id);
                          });
                        },
                        text: "Sign Up as Donor",
                        textStyle:
                            landingPageParagraph.copyWith(color: Colors.white),
                        colour: bilinGreen,
                        width: 300,
                        height: 70,
                        borderColour: Colors.white,
                        roundness: 50,
                      ),
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
