import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:weather_icons/weather_icons.dart';
import 'package:weather_minimal/View/SmallCardTexts.dart';
import 'SmallRow.dart';
import 'BigCard.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  static DateTime now = DateTime.now().toLocal();
  final String formattedTime = DateFormat.jm().format(now);
  final String formattedDate = DateFormat('EEEE').format(now);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Image.asset(
                'asset/1.png',
                width: 80,
                height: 80,
              ),
              BigCard(
                  location: "Dhaka",
                  forecast: "Sunny",
                  temp: 27,
                  time: formattedTime,
                  day: formattedDate,
                  forecast2: "Clear sky",
                  feelsLike: "29",
                  forecastIcon: WeatherIcons.day_sunny),
              SmallRow(
                text1: SmallCardTexts(
                    icon: WeatherIcons.sunrise,
                    sizedBox1: 60.0,
                    textLevel: "Sunrise",
                    value: "6.30"),
                text2: SmallCardTexts(
                    icon: WeatherIcons.sunset,
                    sizedBox1: 65.0,
                    textLevel: "Sunset",
                    value: "17.35"),
              ),
              SmallRow(
                text1: SmallCardTexts(
                    icon: WeatherIcons.humidity,
                    sizedBox1: 30.0,
                    textLevel: "Humadity",
                    value: "55%"),
                text2: SmallCardTexts(
                    icon: WeatherIcons.strong_wind,
                    sizedBox1: 20.0,
                    textLevel: "Wind Speed",
                    value: "15 km/h"),
              ),
              SmallRow(
                text1: SmallCardTexts(
                    icon: WeatherIcons.barometer,
                    sizedBox1: 15.0,
                    textLevel: "Wind Presure",
                    value: "34 mmhg"),
                text2: SmallCardTexts(
                    icon: WeatherIcons.cloud,
                    sizedBox1: 70.0,
                    textLevel: "Cloud",
                    value: "40%"),
              ),
              SmallRow(
                text1: SmallCardTexts(
                    icon: WeatherIcons.thermometer_exterior,
                    sizedBox1: 10.0,
                    textLevel: "Lowest Temp",
                    value: "36"),
                text2: SmallCardTexts(
                    icon: WeatherIcons.thermometer,
                    sizedBox1: 10.0,
                    textLevel: "Highest Temp",
                    value: "34"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
