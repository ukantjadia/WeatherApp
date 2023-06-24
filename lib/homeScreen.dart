import 'package:flutter/material.dart';
import 'package:weather_app/GPScehcker/data_sotre.dart';
import 'package:weather_app/apiModel/apiWithLocation.dart';
import '../GPScehcker/data_sotre.dart';

class homescreen extends StatefulWidget {
  // const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  late Future<Weather> futureWeather;

  @override
  void initState() {
    super.initState();
    futureWeather = getCurrentWeather() as Future<Weather>;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: FutureBuilder(
      future: futureWeather,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Text(snapshot.data!.temp);
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
