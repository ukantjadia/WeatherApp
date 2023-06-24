import 'dart:convert';

import 'package:collection/collection.dart';

class DailyUnits {
	String? time;
	String? sunrise;
	String? sunset;
	String? rainSum;

	DailyUnits({this.time, this.sunrise, this.sunset, this.rainSum});

	@override
	String toString() {
		return 'DailyUnits(time: $time, sunrise: $sunrise, sunset: $sunset, rainSum: $rainSum)';
	}

	factory DailyUnits.fromMap(Map<String, dynamic> data) => DailyUnits(
				time: data['time'] as String?,
				sunrise: data['sunrise'] as String?,
				sunset: data['sunset'] as String?,
				rainSum: data['rain_sum'] as String?,
			);

	Map<String, dynamic> toMap() => {
				'time': time,
				'sunrise': sunrise,
				'sunset': sunset,
				'rain_sum': rainSum,
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [DailyUnits].
	factory DailyUnits.fromJson(String data) {
		return DailyUnits.fromMap(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [DailyUnits] to a JSON string.
	String toJson() => json.encode(toMap());

	@override
	bool operator ==(Object other) {
		if (identical(other, this)) return true;
		if (other is! DailyUnits) return false;
		final mapEquals = const DeepCollectionEquality().equals;
		return mapEquals(other.toMap(), toMap());
	}

	@override
	int get hashCode =>
			time.hashCode ^
			sunrise.hashCode ^
			sunset.hashCode ^
			rainSum.hashCode;
}
