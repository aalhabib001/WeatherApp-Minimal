import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'Home.dart';
import 'MorePage.dart';
import 'Search.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedTab = 1;

  final _pageOptions = [
    SearchBar(),
    HomePage(),
    MorePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Color(0xFFECEFF2)),
      home: Scaffold(
        body: _pageOptions[_selectedTab],

        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedTab,
          onTap: (int index) {
            setState(() {
              _selectedTab = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text('Search'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.wb_sunny),
              title: Text('Now'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz),
              title: Text('More'),
            ),
          ],
        ),
      ),
    );
  }
}
