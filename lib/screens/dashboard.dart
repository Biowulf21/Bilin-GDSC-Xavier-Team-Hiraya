import 'package:bilin/screens/get_involved_page.dart';
import 'package:bilin/screens/test.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);
  static const String id = '/dashboard';

  final tabs = const TabBar(
      labelStyle: TextStyle(color: Colors.black, fontSize: 30),
      tabs: <Tab>[
        Tab(text: 'Home'),
        Tab(text: "Knowledge Hub"),
        Tab(text: "About us"),
        Tab(text: "FAQ"),
        Tab(
          text: 'Profile',
        )
      ]);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          bottom: PreferredSize(
              preferredSize: const Size.fromHeight(0), child: widget.tabs),
        ),
        body: const TabBarView(children: <Widget>[
          GetInvolvedPage(),
          Test(),
          Text('Page4'),
          Text('Page5'),
          Text('Profile Tab')
        ]),
      ),
    );
  }
}
