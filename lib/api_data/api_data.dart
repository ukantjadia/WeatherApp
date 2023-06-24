import 'dart:convert';

import 'package:collection/collection.dart';

import 'current_weather.dart';
import 'daily.dart';
import 'daily_units.dart';
import 'hourly.dart';
import 'hourly_units.dart';

class ApiData {
	double? latitude;
	double? longitude;
	double? generationtimeMs;
	int? utcOffsetSeconds;
	String? timezone;
	String? timezoneAbbreviation;
	int? elevation;
	CurrentWeather? currentWeather;
	HourlyUnits? hourlyUnits;
	Hourly? hourly;
	DailyUnits? dailyUnits;
	Daily? daily;

	ApiData({
		this.latitude, 
		this.longitude, 
		this.generationtimeMs, 
		this.utcOffsetSeconds, 
		this.timezone, 
		this.timezoneAbbreviation, 
		this.elevation, 
		this.currentWeather, 
		this.hourlyUnits, 
		this.hourly, 
		this.dailyUnits, 
		this.daily, 
	});

	@override
	String toString() {
		return 'ApiData(latitude: $latitude, longitude: $longitude, generationtimeMs: $generationtimeMs, utcOffsetSeconds: $utcOffsetSeconds, timezone: $timezone, timezoneAbbreviation: $timezoneAbbreviation, elevation: $elevation, currentWeather: $currentWeather, hourlyUnits: $hourlyUnits, hourly: $hourly, dailyUnits: $dailyUnits, daily: $daily)';
	}

	factory ApiData.fromMap(Map<String, dynamic> data) => ApiData(
				latitude: (data['latitude'] as num?)?.toDouble(),
				longitude: (data['longitude'] as num?)?.toDouble(),
				generationtimeMs: (data['generationtime_ms'] as num?)?.toDouble(),
				utcOffsetSeconds: data['utc_offset_seconds'] as int?,
				timezone: data['timezone'] as String?,
				timezoneAbbreviation: data['timezone_abbreviation'] as String?,
				elevation: data['elevation'] as int?,
				currentWeather: data['current_weather'] == null
						? null
						: CurrentWeather.fromMap(data['current_weather'] as Map<String, dynamic>),
				hourlyUnits: data['hourly_units'] == null
						? null
						: HourlyUnits.fromMap(data['hourly_units'] as Map<String, dynamic>),
				hourly: data['hourly'] == null
						? null
						: Hourly.fromMap(data['hourly'] as Map<String, dynamic>),
				dailyUnits: data['daily_units'] == null
						? null
						: DailyUnits.fromMap(data['daily_units'] as Map<String, dynamic>),
				daily: data['daily'] == null
						? null
						: Daily.fromMap(data['daily'] as Map<String, dynamic>),
			);

	Map<String, dynamic> toMap() => {
				'latitude': latitude,
				'longitude': longitude,
				'generationtime_ms': generationtimeMs,
				'utc_offset_seconds': utcOffsetSeconds,
				'timezone': timezone,
				'timezone_abbreviation': timezoneAbbreviation,
				'elevation': elevation,
				'current_weather': currentWeather?.toMap(),
				'hourly_units': hourlyUnits?.toMap(),
				'hourly': hourly?.toMap(),
				'daily_units': dailyUnits?.toMap(),
				'daily': daily?.toMap(),
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [ApiData].
	factory ApiData.fromJson(String data) {
		return ApiData.fromMap(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [ApiData] to a JSON string.
	String toJson() => json.encode(toMap());

	@override
	bool operator ==(Object other) {
		if (identical(other, this)) return true;
		if (other is! ApiData) return false;
		final mapEquals = const DeepCollectionEquality().equals;
		return mapEquals(other.toMap(), toMap());
	}

	@override
	int get hashCode =>
			latitude.hashCode ^
			longitude.hashCode ^
			generationtimeMs.hashCode ^
			utcOffsetSeconds.hashCode ^
			timezone.hashCode ^
			timezoneAbbreviation.hashCode ^
			elevation.hashCode ^
			currentWeather.hashCode ^
			hourlyUnits.hashCode ^
			hourly.hashCode ^
			dailyUnits.hashCode ^
			daily.hashCode;
}
