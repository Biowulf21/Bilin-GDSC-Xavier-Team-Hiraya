import 'package:bilin/constants/constants_colors.dart';
import 'package:bilin/constants/constants_text_styles.dart';
import 'package:flutter/material.dart';

class LandingPageCard extends StatelessWidget {
  const LandingPageCard(
      {this.title,
      this.desc,
      this.colour,
      required this.icon,
      this.borderColor,
      Key? key})
      : super(key: key);

  final Image icon;
  final String? title;
  final String? desc;
  final Color? colour;
  final String defaultTitle = "Lorem Ipsum";
  final String defaultDesc =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus est.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus viverra pharetra velit, vitae efficitur neque sollicitudin in. Cras pellentesque felis et magna ultrices, quis l";
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.6,
          width: MediaQuery.of(context).size.width * 0.3,
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(child: icon),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 20.0),
                child: Text(
                  title ?? defaultTitle,
                  style: cardTitle,
                  textAlign: TextAlign.justify,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 20.0),
                child: Text(
                  desc ?? defaultDesc,
                  style: cardDesc,
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          ),
          decoration: BoxDecoration(
              border: Border.all(color: borderColor ?? Colors.orange),
              borderRadius: BorderRadius.circular(10.0),
              color: colour ?? landingPageCardGrey),
        ),
      ),
    );
  }
}
