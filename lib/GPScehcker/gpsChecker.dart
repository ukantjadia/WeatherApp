import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class gpsChecker extends StatefulWidget {
  // const gpsChecker({super.key});

  @override
  State<gpsChecker> createState() => _gpsCheckerState();
}

class _gpsCheckerState extends State<gpsChecker> {
  bool hasPermission = false;
  bool serviceStatus = false;

  late LocationPermission permission;
  late Position position;
  String long = "", lan = "";

  late StreamSubscription<Position> positionStream;

  @override
  void initState() {
    checkGPS();
    super.initState();
  }

  checkGPS() async {
    serviceStatus = await Geolocator.isLocationServiceEnabled();
    if (serviceStatus) {
      permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          print("permission not givent");
        } else if (permission == LocationPermission.deniedForever) {
          print("permission denied forever");
        } else if (permission == LocationPermission.unableToDetermine) {
          print("Not able to check for the location permission");
        } else {
          hasPermission = true;
        }
      } else {
        hasPermission = true;
      }
      if (hasPermission) {
        setState(() {
          // refresh the ui
        });
        getGeolocation();
      }
    } else {
      print("GPS service is not enable please turn it on");
    }
    setState(() {
      //refresh the ui
    });
  }

  getGeolocation() async {
    position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );
    long = position.longitude.toString();
    lan = position.latitude.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(long),
          Text(lan),
        ],
      ),
    );
  }
}
