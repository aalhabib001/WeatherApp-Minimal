import 'package:flutter/material.dart';


class SmallRow extends StatelessWidget {
  const SmallRow({@required this.text1,@required this.text2});

  final Widget text1,text2;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            padding: EdgeInsets.fromLTRB(10, 30, 10, 5),
            height: 170,
            width: double.maxFinite,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  side: BorderSide(color: Color(0xFFF8FAFB))),
              elevation: 5,
              color: Color(0xFFF1F3F6),
              child: text1,
            ),
          ),
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.fromLTRB(10, 30, 10, 5),
            height: 170,
            width: double.maxFinite,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  side: BorderSide(color: Color(0xFFF8FAFB))),
              elevation: 5,
              color: Color(0xFFF1F3F6),
              child: text2,
            ),
          ),
        )
      ],
    );
  }
}
