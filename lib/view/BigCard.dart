import 'package:flutter/material.dart';
import 'package:weather_icons/weather_icons.dart';

class BigCard extends StatelessWidget {
  const BigCard({@required this.location,@required this.forecast,@required this.temp,@required this.time,@required this.day,@required this.forecast2,@required this.feelsLike,@required this.forecastIcon});

  final String location;
  final String forecast;
  final int temp;
  final String time;
  final String day;
  final String forecast2;
  final String feelsLike;

  final IconData forecastIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 15, 10, 0),
      height: 220,
      width: double.maxFinite,
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
            side: BorderSide(color: Color(0xFFF8FAFB))),
        elevation: 5,
        color: Color(0xFFF1F3F6),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding:
                  const EdgeInsets.only(left: 15.0, top: 5.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.my_location),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          location,
                          style: TextStyle(
                            fontSize: 22.0,
                            fontFamily: 'avenir',
                          ),
                        ),
                        SizedBox(
                          width: 140.0,
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      right: 15.0, top: 5.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Row(
                      children: <Widget>[
                        SizedBox(
                          width: 15.0,
                        ),
                        Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                SizedBox(
                                  width: 8.0,
                                ),
                                Icon(WeatherIcons.day_sunny),
                                SizedBox(
                                  width: 7.0,
                                ),
                                Text(
                                  forecast,
                                  style: TextStyle(
                                      fontSize: 22.0,
                                      fontFamily: 'consolas'),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  temp.toString()+"°C",
                  style: TextStyle(fontSize: 75.0),
                ),
                SizedBox(
                  width: 110.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      time,
                      style: TextStyle(
                          fontSize: 22.0, fontFamily: 'consolas'),
                    ),
                    Text(
                      day,
                      style: TextStyle(
                          fontSize: 20.0, fontFamily: 'consolas'),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 25.0,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  "\"$forecast\"",
                  style: TextStyle(
                    fontSize: 22.0,
                    fontFamily: 'avenir',
                  ),
                ),
                SizedBox(
                  width: 120.0,
                ),
                Text(
                  "Feels Like: $feelsLike°C",
                  style: TextStyle(
                    fontSize: 22.0,
                    fontFamily: 'avenir',
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
