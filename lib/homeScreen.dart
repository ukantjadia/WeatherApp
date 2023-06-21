import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'GPScehcker/gpsChecker.dart';

class homePage extends StatelessWidget {
  homePage({super.key});
  

  
  Future getData() async {
    var response = await http.get(Uri.https('api.openweathermap.org','/data/2.5/forecast/daily'.{'lat':lan,}));
    var jsonData = jsonDecode(response.body);
    print(jsonData);
    // api.openweathermap.org/data/2.5/forecast/daily?lat={lat}&lon={lon}&cnt={cnt}&appid={API key}


  }

  @override
  Widget build(BuildContext context) {
    return gpsChecker();
    }
}
