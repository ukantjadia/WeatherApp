import 'dart:convert';

import 'package:collection/collection.dart';

class Hourly {
	List<String>? time;
	List<num>? temperature2m;

	Hourly({this.time, this.temperature2m});

	@override
	String toString() => 'Hourly(time: $time, temperature2m: $temperature2m)';

	factory Hourly.fromMap(Map<String, dynamic> data) => Hourly(
				time: data['time'] as List<String>?,
				temperature2m: data['temperature_2m'] as List<num>?,
			);

	Map<String, dynamic> toMap() => {
				'time': time,
				'temperature_2m': temperature2m,
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Hourly].
	factory Hourly.fromJson(String data) {
		return Hourly.fromMap(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [Hourly] to a JSON string.
	String toJson() => json.encode(toMap());

	@override
	bool operator ==(Object other) {
		if (identical(other, this)) return true;
		if (other is! Hourly) return false;
		final mapEquals = const DeepCollectionEquality().equals;
		return mapEquals(other.toMap(), toMap());
	}

	@override
	int get hashCode => time.hashCode ^ temperature2m.hashCode;
}
