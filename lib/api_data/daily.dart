import 'dart:convert';

import 'package:collection/collection.dart';

class Daily {
	List<String>? time;
	List<String>? sunrise;
	List<String>? sunset;
	List<num>? rainSum;

	Daily({this.time, this.sunrise, this.sunset, this.rainSum});

	@override
	String toString() {
		return 'Daily(time: $time, sunrise: $sunrise, sunset: $sunset, rainSum: $rainSum)';
	}

	factory Daily.fromMap(Map<String, dynamic> data) => Daily(
				time: data['time'] as List<String>?,
				sunrise: data['sunrise'] as List<String>?,
				sunset: data['sunset'] as List<String>?,
				rainSum: data['rain_sum'] as List<num>?,
			);

	Map<String, dynamic> toMap() => {
				'time': time,
				'sunrise': sunrise,
				'sunset': sunset,
				'rain_sum': rainSum,
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Daily].
	factory Daily.fromJson(String data) {
		return Daily.fromMap(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [Daily] to a JSON string.
	String toJson() => json.encode(toMap());

	@override
	bool operator ==(Object other) {
		if (identical(other, this)) return true;
		if (other is! Daily) return false;
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
