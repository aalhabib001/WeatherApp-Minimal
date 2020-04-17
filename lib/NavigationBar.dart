import 'package:flutter/material.dart';

class NavBer extends StatefulWidget {
  @override
  _NavBerState createState() => _NavBerState();
}

class _NavBerState extends State<NavBer> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 1,
      items: [
        BottomNavigationBarItem(
          icon: new Icon(Icons.search),
          title: new Text('Search'),
        ),
        BottomNavigationBarItem(
          icon: new Icon(Icons.wb_sunny),
          title: new Text('Now'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.more_horiz),
          title: Text('More'),
        ),
      ],
    );
  }
}
