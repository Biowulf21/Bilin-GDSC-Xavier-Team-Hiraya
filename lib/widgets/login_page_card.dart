import 'package:bilin/constants/constants_text_styles.dart';
import 'package:flutter/material.dart';

class LandingPageCard extends StatelessWidget {
  const LandingPageCard(
      {this.title, this.desc, this.colour, required this.icon, Key? key})
      : super(key: key);

  final IconData icon;
  final String? title;
  final String? desc;
  final Color? colour;
  final String defaultTitle = "Lorem Ipsum";
  final String defaultDesc =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus est.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus viverra pharetra velit, vitae efficitur neque sollicitudin in. Cras pellentesque felis et magna ultrices, quis l";

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
                child: Container(
                  child: Icon(
                    icon,
                    size: 100,
                  ),
                ),
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
              borderRadius: BorderRadius.circular(10.0),
              color: colour ?? Colors.grey[400]),
        ),
      ),
    );
  }
}
