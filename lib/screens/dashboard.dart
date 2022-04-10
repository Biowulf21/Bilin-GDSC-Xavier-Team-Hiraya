import 'package:bilin/models/event.dart';
import 'package:bilin/widgets/event_card.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  static const String id = "/dashboard";

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List<Event> events = getEvents();

  static List<Event> getEvents() {
    const data = [
      {
        'eventName': "Lorem ipsum",
        'eventDateTime': "Lorem",
        'eventLocation': "Ipsum",
        'donors': 21,
        'volunteers': 22,
      },
      {
        'eventName': "Lorem ipsum",
        'eventDateTime': "Lorem",
        'eventLocation': "Ipsum",
        'donors': 69,
        'volunteers': 420,
      },
      {
        'eventName': "Lorem ipsum",
        'eventDateTime': "Lorem",
        'eventLocation': "Ipsum",
        'donors': 20,
        'volunteers': 98,
      },
      {
        'eventName': "Lorem ipsum",
        'eventDateTime': "Lorem",
        'eventLocation': "Ipsum",
        'donors': 67,
        'volunteers': 21,
      },
    ];

    return data.map<Event>(Event.fromJSON).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: buildEvents(events));
  }

  Widget buildEvents(List<Event> events) => GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        childAspectRatio: 1,
      ),
      itemCount: events.length,
      itemBuilder: (context, index) {
        final event = events[index];

        return EventCard(
            eventName: event.eventName,
            eventDateTime: event.eventDateTime,
            eventLocation: event.eventLocation,
            donors: event.donors,
            volunteers: event.volunteers);
      });
}
