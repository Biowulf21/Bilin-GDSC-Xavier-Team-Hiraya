import 'package:bilin/models/event.dart';
import 'package:bilin/widgets/event_card.dart';
import 'package:flutter/material.dart';

class EventsPage extends StatefulWidget {
  const EventsPage({Key? key}) : super(key: key);

  static const String id = "/dashboard";

  @override
  State<EventsPage> createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {
  List<Event> events = Event.getEvents();

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
