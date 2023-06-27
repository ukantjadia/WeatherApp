import 'package:http/http.dart'as http;
import 'dart:convert';

import 'package:flutter/material.dart';
import 'api_dart.dart';

class homescreen extends StatefulWidget {
  // const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}
  // Future<List> getCurrentWeather() async{
  //   // var endpoint  = Uri.parse(
  //   //   "https://api.open-meteo.com/v1/forecast?latitude=52.52&longitude=13.41&hourly=temperature_2m");
  //   var endpoint  = Uri.parse(
  //     "https://api.open-meteo.com/v1/forecast?latitude=26.91&longitude=75.79&hourly=temperature_2m&daily=sunrise,sunset,rain_sum&current_weather=true&forecast_days=14&start_date=2023-06-23&end_date=2023-07-01&timezone=auto");
  //   var response = await http.get(endpoint);
  //   if (response.statusCode == 200) {
  //     return Future.error(response.statusCode);
  //     // return (jsonDecode(response.body) as List).map((p) => ApiData.fromJson(p);
  //   } else {
  //     throw Exception(('Failed to load Data'));
  //   }
  // }

  Future<ApiData> fetechData() async {
    final response = await http.get(Uri.parse('https://api.open-meteo.com/v1/forecast?latitude=26.91&longitude=75.79&hourly=temperature_2m&daily=sunrise,sunset,rain_sum&current_weather=true&forecast_days=14&start_date=2023-06-23&end_date=2023-07-01&timezone=auto'));

    if (response.statusCode == 200) {
      return ApiData.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load data');
    }
  }


class _homescreenState extends State<homescreen> {
  late Future<ApiData> futureWeather;

  @override
  void initState() {
    super.initState();
    futureWeather = fetechData() ;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: FutureBuilder<ApiData>(
      future: futureWeather,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          // return Text("sdfsdfsdf");
          return Scaffold(
            appBar: AppBar(),
            body: Column(
              children: [
                Text("${snapshot.data!.latitude}"  ),
                Text("${snapshot.data!.daily}"  ),
              ],
            ),
          );
        } else if (snapshot.hasError) {
          return Text('${snapshot.error}');
        }
        return const CircularProgressIndicator();
      },
    ));
  }
}