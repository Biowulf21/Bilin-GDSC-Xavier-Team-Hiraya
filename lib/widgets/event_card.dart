import 'package:bilin/widgets/custom_rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:bilin/constants/constants_colors.dart';
import 'package:bilin/constants/constants_text_styles.dart';

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
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.6,
        width: MediaQuery.of(context).size.height * 0.5,
        child: Container(
          decoration: const BoxDecoration(
            color: bilinGreen,
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                decoration: const BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                height: MediaQuery.of(context).size.height * 0.2,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  eventName,
                  // style: cardTitle,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  eventDateTime,
                  // style: cardTitle,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  eventLocation,
                  style: cardTitle,
                ),
              ),
              Wrap(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      volunteers.toString() + " volunteers",
                      style: cardDesc,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      donors.toString() + " donors",
                      style: cardDesc,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: CustomRoundedButton(
                    onTap: () {}, text: "View Details", colour: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
