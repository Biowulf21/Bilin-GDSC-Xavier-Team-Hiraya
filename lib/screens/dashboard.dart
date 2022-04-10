import 'package:bilin/constants/constants_text_styles.dart';
import 'package:bilin/screens/get_involved_page.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  final Text homeText = const Text(
    'Home',
    style: cardDesc,
  );
  final Text involveText = const Text(
    'Get Involved',
    style: cardDesc,
  );
  final Text hubText = const Text(
    'Knowledge Hub',
    style: cardDesc,
  );
  final Text aboutText = const Text(
    'About Us',
    style: cardDesc,
  );
  final Text faqText = const Text(
    'FAQ',
    style: cardDesc,
  );

  static const String id = '/dashboard';

  final tabs = const TabBar(
      labelStyle: TextStyle(color: Colors.black, fontSize: 30),
      tabs: <Tab>[
        Tab(text: 'Home'),
        Tab(text: "Knowledge Hub"),
        Tab(text: "About us"),
        Tab(text: "FAQ"),
      ]);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          bottom: PreferredSize(
              preferredSize: const Size.fromHeight(0), child: widget.tabs),
        ),
        body: const TabBarView(children: <Widget>[
          GetInvolvedPage(),
          Text('Page3'),
          Text('Page4'),
          Text('Page5'),
        ]),
      ),
    );
  }
}
