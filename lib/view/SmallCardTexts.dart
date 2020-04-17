import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class SmallCardTexts extends StatelessWidget {

  SmallCardTexts({@required this.icon,@required this.sizedBox1,@required this.textLevel,@required this.value});

  final IconData icon;
  final double sizedBox1;
  final String textLevel;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 13.0,
        ),
        Row(
          children: <Widget>[
            SizedBox(
              width: 10.0,
            ),
            Icon(
              icon,
              size: 25,
            ),
            SizedBox(
              width: sizedBox1,
            ),
            Text(
              textLevel,
              style: TextStyle(fontSize: 20.0),
            ),
          ],
        ),
        SizedBox(
          height: 30.0,
        ),
        Text(
          value,
          style: TextStyle(
            fontSize: 28.0,
          ),
        )
      ],
    );
  }
}