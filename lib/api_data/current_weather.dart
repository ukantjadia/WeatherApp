import 'dart:convert';

import 'package:collection/collection.dart';

class CurrentWeather {
	double? temperature;
	double? windspeed;
	int? winddirection;
	int? weathercode;
	int? isDay;
	String? time;

	CurrentWeather({
		this.temperature, 
		this.windspeed, 
		this.winddirection, 
		this.weathercode, 
		this.isDay, 
		this.time, 
	});

	@override
	String toString() {
		return 'CurrentWeather(temperature: $temperature, windspeed: $windspeed, winddirection: $winddirection, weathercode: $weathercode, isDay: $isDay, time: $time)';
	}

	factory CurrentWeather.fromMap(Map<String, dynamic> data) {
		return CurrentWeather(
			temperature: (data['temperature'] as num?)?.toDouble(),
			windspeed: (data['windspeed'] as num?)?.toDouble(),
			winddirection: data['winddirection'] as int?,
			weathercode: data['weathercode'] as int?,
			isDay: data['is_day'] as int?,
			time: data['time'] as String?,
		);
	}



	Map<String, dynamic> toMap() => {
				'temperature': temperature,
				'windspeed': windspeed,
				'winddirection': winddirection,
				'weathercode': weathercode,
				'is_day': isDay,
				'time': time,
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [CurrentWeather].
	factory CurrentWeather.fromJson(String data) {
		return CurrentWeather.fromMap(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [CurrentWeather] to a JSON string.
	String toJson() => json.encode(toMap());

	@override
	bool operator ==(Object other) {
		if (identical(other, this)) return true;
		if (other is! CurrentWeather) return false;
		final mapEquals = const DeepCollectionEquality().equals;
		return mapEquals(other.toMap(), toMap());
	}

	@override
	int get hashCode =>
			temperature.hashCode ^
			windspeed.hashCode ^
			winddirection.hashCode ^
			weathercode.hashCode ^
			isDay.hashCode ^
			time.hashCode;
}
