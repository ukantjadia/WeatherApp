import 'package:http/http.dart'as http;
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:weather_app/GPScehcker/data_sotre.dart';
import 'package:weather_app/apiModel/apiWithLocation.dart';
import '../GPScehcker/data_sotre.dart';

class homescreen extends StatefulWidget {
  // const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}
  Future<Weather>? getCurrentWeather() async{
    // var endpoint  = Uri.parse(
    //   "https://api.open-meteo.com/v1/forecast?latitude=52.52&longitude=13.41&hourly=temperature_2m");
    var endpoint  = Uri.parse(
      "https://api.open-meteo.com/v1/forecast?latitude=26.91&longitude=75.79&hourly=temperature_2m&daily=sunrise,sunset,rain_sum&current_weather=true&forecast_days=14&start_date=2023-06-23&end_date=2023-07-01&timezone=auto");
    var response = await http.get(endpoint);
    if (response.statusCode == 200) {
      return Weather.fromJson(jsonDecode(response.body));
    } else {
      throw Exception(('Failed to load Data'));
    }
  }

class _homescreenState extends State<homescreen> {
  late Future<Weather> futureWeather;

  @override
  void initState() {
    super.initState();
    futureWeather = getCurrentWeather()! ;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: FutureBuilder(
      future: futureWeather,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Text("sdfsdfsdf");
          // return Text(snapshot.data!.temp);
        } else if (snapshot.hasError) {
          return Text('${snapshot.error}');
        }
        return const CircularProgressIndicator();
      },
    ));
  }
}
class Weather{
  final int? latitude;
  final int? longitude;
  final int? elevation;
  final int? temp;
  final int? wind;
  final int? winddir;
  final int? isday;
  final int? weathercode;
  final int? rainsum;
  final String? sunrise;
  final String? sunset;

  const Weather({
    required this.latitude,
    required this.longitude,
    required this.elevation,
    required this.temp,
    required this.wind,
    required this.winddir,
    required this.isday,
    required this.weathercode,
    required this.rainsum,
    required this.sunrise,
    required this.sunset,
  });
  factory Weather.fromJson(Map<String, dynamic> json){
    return Weather(
      latitude: json['latiture'],
      longitude: json['longitude'],
      elevation: json['elevation'],
      temp: json['current_weather']['temperature'],
      wind: json['current_weather']['windspeed'],
      winddir: json['current_weather']['winddirection'],
      isday: json['current_weather']['is_day'],
      weathercode: json['current_weather']['weathercode'],
      rainsum: json['daily']['rain_sum'],
      sunrise: json['daily']['sunrise'],
      sunset: json['daily']['sunset'],
    );
  }
}
