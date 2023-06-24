import 'dart:convert';

import 'package:http/http.dart'as http;

import '../GPScehcker/data_sotre.dart';

// ignore: camel_case_types
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


    // var body = jsonDecode(response.body);
    // print(Weather.fromJson(body));
    // return Weather.fromJson(body);
  }