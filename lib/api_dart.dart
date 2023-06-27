
class ApiData {
  final double? latitude;
  final double? longitude;
  // final double? generationtimeMs;
  // final int? utcOffsetSeconds;
  final String? timezone;
  // final String? timezoneAbbreviation;
  // final int? elevation;
  // final CurrentWeather? currentWeather;
  // final HourlyUnits? hourlyUnits;
  // final Hourly? hourly;
  // final DailyUnits? dailyUnits;
  // final Daily? daily;

  const ApiData(
      {
      required this.latitude,
      required this.longitude,
      // required this.generationtimeMs,
      // required this.utcOffsetSeconds,
      required this.timezone,
      // required this.timezoneAbbreviation,
      // required this.elevation,
      // this.currentWeather, this.hourlyUnits,
      // this.hourly,
      // this.dailyUnits,
      // this.daily
      });

      factory ApiData.fromJson(Map<String, dynamic> json) {
        return ApiData(
          latitude: json['latitude'],
          longitude: json['longitude'],
          timezone: json['timezone'],

        );
      }

//   ApiData.fromJson(Map<String, dynamic> json) {
//     latitude = json['latitude'];
//     longitude = json['longitude'];
//     generationtimeMs = json['generationtime_ms'];
//     utcOffsetSeconds = json['utc_offset_seconds'];
//     timezone = json['timezone'];
//     timezoneAbbreviation = json['timezone_abbreviation'];
//     elevation = json['elevation'];
//     currentWeather = json['current_weather'] != null
//         ? new CurrentWeather.fromJson(json['current_weather'])
//         : null;
//     hourlyUnits = json['hourly_units'] != null
//         ? new HourlyUnits.fromJson(json['hourly_units'])
//         : null;
//     hourly =
//         json['hourly'] != null ? new Hourly.fromJson(json['hourly']) : null;
//     dailyUnits = json['daily_units'] != null
//         ? new DailyUnits.fromJson(json['daily_units'])
//         : null;
//     daily = json['daily'] != null ? new Daily.fromJson(json['daily']) : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['latitude'] = this.latitude;
//     data['longitude'] = this.longitude;
//     data['generationtime_ms'] = this.generationtimeMs;
//     data['utc_offset_seconds'] = this.utcOffsetSeconds;
//     data['timezone'] = this.timezone;
//     data['timezone_abbreviation'] = this.timezoneAbbreviation;
//     data['elevation'] = this.elevation;
//     if (this.currentWeather != null) {
//       data['current_weather'] = this.currentWeather!.toJson();
//     }
//     if (this.hourlyUnits != null) {
//       data['hourly_units'] = this.hourlyUnits!.toJson();
//     }
//     if (this.hourly != null) {
//       data['hourly'] = this.hourly!.toJson();
//     }
//     if (this.dailyUnits != null) {
//       data['daily_units'] = this.dailyUnits!.toJson();
//     }
//     if (this.daily != null) {
//       data['daily'] = this.daily!.toJson();
//     }
//     return data;
//   }
// }

// class CurrentWeather {
//   double? temperature;
//   double? windspeed;
//   int? winddirection;
//   int? weathercode;
//   int? isDay;
//   String? time;

//   CurrentWeather(
//       {this.temperature,
//       this.windspeed,
//       this.winddirection,
//       this.weathercode,
//       this.isDay,
//       this.time});

//   CurrentWeather.fromJson(Map<String, dynamic> json) {
//     temperature = json['temperature'];
//     windspeed = json['windspeed'];
//     winddirection = json['winddirection'];
//     weathercode = json['weathercode'];
//     isDay = json['is_day'];
//     time = json['time'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['temperature'] = this.temperature;
//     data['windspeed'] = this.windspeed;
//     data['winddirection'] = this.winddirection;
//     data['weathercode'] = this.weathercode;
//     data['is_day'] = this.isDay;
//     data['time'] = this.time;
//     return data;
//   }
// }

// class HourlyUnits {
//   String? time;
//   String? temperature2m;

//   HourlyUnits({this.time, this.temperature2m});

//   HourlyUnits.fromJson(Map<String, dynamic> json) {
//     time = json['time'];
//     temperature2m = json['temperature_2m'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['time'] = this.time;
//     data['temperature_2m'] = this.temperature2m;
//     return data;
//   }
// }

// class Hourly {
//   List<String>? time;
//   List<double>? temperature2m;

//   Hourly({this.time, this.temperature2m});

//   Hourly.fromJson(Map<String, dynamic> json) {
//     time = json['time'].cast<String>();
//     temperature2m = json['temperature_2m'].cast<double>();
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['time'] = this.time;
//     data['temperature_2m'] = this.temperature2m;
//     return data;
//   }
// }

// class DailyUnits {
//   String? time;
//   String? sunrise;
//   String? sunset;
//   String? rainSum;

//   DailyUnits({this.time, this.sunrise, this.sunset, this.rainSum});

//   DailyUnits.fromJson(Map<String, dynamic> json) {
//     time = json['time'];
//     sunrise = json['sunrise'];
//     sunset = json['sunset'];
//     rainSum = json['rain_sum'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['time'] = this.time;
//     data['sunrise'] = this.sunrise;
//     data['sunset'] = this.sunset;
//     data['rain_sum'] = this.rainSum;
//     return data;
//   }
}

// class Daily {
//   List<String>? time;
//   List<String>? sunrise;
//   List<String>? sunset;
//   List<int>? rainSum;

//   Daily({this.time, this.sunrise, this.sunset, this.rainSum});

//   Daily.fromJson(Map<String, dynamic> json) {
//     time = json['time'].cast<String>();
//     sunrise = json['sunrise'].cast<String>();
//     sunset = json['sunset'].cast<String>();
//     rainSum = json['rain_sum'].cast<int>();
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['time'] = this.time;
//     data['sunrise'] = this.sunrise;
//     data['sunset'] = this.sunset;
//     data['rain_sum'] = this.rainSum;
//     return data;
//   }
// }
