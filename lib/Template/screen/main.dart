import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:web_bi/Template/screen/home.dart';
import 'package:web_bi/core/models/tab.dart';

import '../../core/data/fake_data.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: tabs.length,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Ello English'),
            actions: <Widget>[
              IconButton(icon: Icon(FeatherIcons.sun), onPressed: () {})
            ],
            bottom: TabBar(
                isScrollable: true,
                indicatorColor: Colors.pinkAccent,
                tabs: tabs
                    .map((TabChoice tab) => Tab(
                          text: tab.title,
                        ))
                    .toList()),
          ),
          drawer: Drawer(),
          body: TabBarView(children: [
            HomeScreen(),
            HomeScreen(),
            HomeScreen(),
            HomeScreen(),
            HomeScreen()
          ]),
        ));
  }
}
