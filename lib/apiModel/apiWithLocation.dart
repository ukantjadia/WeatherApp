import 'dart:convert';

import 'package:http/http.dart'as http;

import '../GPScehcker/data_sotre.dart';

class apiCall{
  Future<Weather>? getCurrentWeather(String? location) async{
    var endpoint  = Uri.parse(
      "https://api.open-meteo.com/v1/forecast?latitude=52.52&longitude=13.41&hourly=temperature_2m");
    var response = await http.get(endpoint);
    var body = jsonDecode(response.body);
    print(Weather.fromJson(body));
    return Weather.fromJson(body);
  }
}