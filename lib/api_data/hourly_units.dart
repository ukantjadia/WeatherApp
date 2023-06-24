import 'dart:convert';

import 'package:collection/collection.dart';

class HourlyUnits {
	String? time;
	String? temperature2m;

	HourlyUnits({this.time, this.temperature2m});

	@override
	String toString() {
		return 'HourlyUnits(time: $time, temperature2m: $temperature2m)';
	}

	factory HourlyUnits.fromMap(Map<String, dynamic> data) => HourlyUnits(
				time: data['time'] as String?,
				temperature2m: data['temperature_2m'] as String?,
			);

	Map<String, dynamic> toMap() => {
				'time': time,
				'temperature_2m': temperature2m,
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [HourlyUnits].
	factory HourlyUnits.fromJson(String data) {
		return HourlyUnits.fromMap(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [HourlyUnits] to a JSON string.
	String toJson() => json.encode(toMap());

	@override
	bool operator ==(Object other) {
		if (identical(other, this)) return true;
		if (other is! HourlyUnits) return false;
		final mapEquals = const DeepCollectionEquality().equals;
		return mapEquals(other.toMap(), toMap());
	}

	@override
	int get hashCode => time.hashCode ^ temperature2m.hashCode;
}
