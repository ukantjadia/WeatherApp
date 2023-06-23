import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:weather_app/GPScehcker/data_sotre.dart';
import 'package:weather_app/apiModel/apiWithLocation.dart';

import 'GPScehcker/gpsChecker.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  
  void initStart(){
    super.initState();
    apiCall();
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
        children: [
          Center(
            child: Column(
              children: [

                // Text() 
              ],
            ),
          )
        ],
      ) 
    );
  }
}
