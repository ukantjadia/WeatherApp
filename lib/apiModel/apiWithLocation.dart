import 'dart:convert';

import 'package:http/http.dart'as http;

import '../api_dart.dart';

// ignore: camel_case_types
Future<ApiData> getCurrentWeather() async{
  // var endpoint  = Uri.parse(
  //   "https://api.open-meteo.com/v1/forecast?latitude=52.52&longitude=13.41&hourly=temperature_2m");
  var endpoint  = Uri.parse(
    "https://api.open-meteo.com/v1/forecast?latitude=26.91&longitude=75.79&hourly=temperature_2m&daily=sunrise,sunset,rain_sum&current_weather=true&forecast_days=14&start_date=2023-06-23&end_date=2023-07-01&timezone=auto");
  var response = await http.get(endpoint);
  if (response.statusCode == 200) {
    return ApiData.fromJson(jsonDecode(response.body));
  } else {
    throw Exception(('Failed to load Data'));
  }
}

// class Weather{
//   final dynamic? latitude;
//   final dynamic? longitude;
//   final dynamic? elevation;
//   final dynamic? temp;
//   final dynamic? wind;
//   final dynamic? winddir;
//   final dynamic? isday;
//   final dynamic? weathercode;
//   final dynamic? rainsum;
//   final String? sunrise;
//   final String? sunset;

//   const Weather({
//     required this.latitude,
//     required this.longitude,
//     required this.elevation,
//     required this.temp,
//     required this.wind,
//     required this.winddir,
//     required this.isday,
//     required this.weathercode,
//     required this.rainsum,
//     required this.sunrise,
//     required this.sunset,
//   });
//   factory Weather.fromJson(Map<String, dynamic> json){
//     return Weather(
//       latitude: json['latiture'],
//       longitude: json['longitude'],
//       elevation: json['elevation'],
//       temp: json['current_weather']['temperature'],
//       wind: json['current_weather']['windspeed'],
//       winddir: json['current_weather']['winddirection'],
//       isday: json['current_weather']['is_day'],
//       weathercode: json['current_weather']['weathercode'],
//       rainsum: json['daily']['rain_sum'],
//       sunrise: json['daily']['sunrise'],
//       sunset: json['daily']['sunset'],
//     );
//   }
// }

