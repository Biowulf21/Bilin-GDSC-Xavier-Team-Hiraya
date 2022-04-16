import 'package:bilin/screens/events_page.dart';
import 'package:flutter/material.dart';

class GetInvolvedPage extends StatefulWidget {
  const GetInvolvedPage({Key? key}) : super(key: key);

  @override
  State<GetInvolvedPage> createState() => _GetInvolvedPageState();
}

class _GetInvolvedPageState extends State<GetInvolvedPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const <Widget>[Expanded(child: EventsPage())],
    );
  }
}
