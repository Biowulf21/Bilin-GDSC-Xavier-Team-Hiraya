import 'package:bilin/models/event.dart';
import 'package:bilin/widgets/event_card.dart';
import 'package:bilin/widgets/google_maps.dart';
import 'package:flutter/material.dart';

class EventsPage extends StatefulWidget {
  const EventsPage({this.latitude, this.longitude, Key? key}) : super(key: key);

  static const String id = "/events-page";
  final double? latitude;
  final double? longitude;

  @override
  State<EventsPage> createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {
  List<Event> events = Event.getEvents();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            color: Colors.grey,
            height: MediaQuery.of(context).size.height * 0.6,
            child: Container(
              child: getMap(widget.latitude!, widget.longitude!),
            ),
          ),
          Container(
            child: buildEvents(events),
          ),
        ],
      ),
    );
  }

  Widget buildEvents(List<Event> events) => GridView.builder(
      shrinkWrap: true,
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
