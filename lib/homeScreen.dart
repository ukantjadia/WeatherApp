import 'package:http/http.dart'as http;
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:weather_app/GPScehcker/data_sotre.dart';
import 'package:weather_app/apiModel/apiWithLocation.dart';
import 'package:weather_app/api_data/api_data.dart';
import '../GPScehcker/data_sotre.dart';

class homescreen extends StatefulWidget {
  // const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}
  Future<ApiData>? getCurrentWeather() async{
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

class _homescreenState extends State<homescreen> {
  late Future<ApiData> futureWeather;

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
          // return Text("sdfsdfsdf");
          return Text(snapshot.data!.time.toString());
        } else if (snapshot.hasError) {
          return Text('${snapshot.error}');
        }
        return const CircularProgressIndicator();
      },
    ));
  }
}