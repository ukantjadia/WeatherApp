// class Weather {
//   String? cityName;
//   double? temp;
//   double? wind;
//   int? humidity;
//   double? feels_like;
//   int? pressure;
//   Weather(
//     {
//       this.cityName,
//       this.feels_like,
//       this.humidity,
//       this.pressure,
//       this.temp,
//       this.wind,
//     }
//   );

//   Weather.fromJson(Map<String, dynamic> json){
//     cityName = json['name'];
//     temp = json['main']['temp'];
//     wind = json['wind']['speed'];
//     pressure = json['main'];
//   }

// }

class Weather {
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
  factory Weather.fromJson(Map<String, dynamic> json) {
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
