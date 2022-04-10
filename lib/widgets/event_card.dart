import 'package:flutter/material.dart';
import 'package:bilin/constants/constants_colors.dart';

class EventCard extends StatelessWidget {
  const EventCard(
      {required this.eventName,
      required this.eventDateTime,
      required this.eventLocation,
      required this.donors,
      required this.volunteers,
      Key? key})
      : super(key: key);

  final String eventName;
  final String eventDateTime;
  final String eventLocation;
  final int donors;
  final int volunteers;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        decoration: const BoxDecoration(
          color: bilinGreen,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        height: MediaQuery.of(context).size.height * 0.4,
        width: MediaQuery.of(context).size.height * 0.4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(eventName),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(eventLocation),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(volunteers.toString() + " volunteers"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(donors.toString() + " donors"),
            ),
          ],
        ),
      ),
    );
  }
}
