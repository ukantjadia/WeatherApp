class ApiData {
  ApiData({
      this.latitude, 
      this.longitude, 
      this.generationtimeMs, 
      this.utcOffsetSeconds, 
      this.timezone, 
      this.timezoneAbbreviation, 
      this.elevation, 
      this.hourlyUnits, 
      this.hourly, 
      this.dailyUnits, 
      this.daily,});

  ApiData.fromJson(dynamic json) {
    latitude = json['latitude'];
    longitude = json['longitude'];
    generationtimeMs = json['generationtime_ms'];
    utcOffsetSeconds = json['utc_offset_seconds'];
    timezone = json['timezone'];
    timezoneAbbreviation = json['timezone_abbreviation'];
    elevation = json['elevation'];
    hourlyUnits = json['hourly_units'] != null ? HourlyUnits.fromJson(json['hourly_units']) : null;
    hourly = json['hourly'] != null ? Hourly.fromJson(json['hourly']) : null;
    dailyUnits = json['daily_units'] != null ? DailyUnits.fromJson(json['daily_units']) : null;
    daily = json['daily'] != null ? Daily.fromJson(json['daily']) : null;
  }
  num? latitude;
  num? longitude;
  num? generationtimeMs;
  num? utcOffsetSeconds;
  String? timezone;
  String? timezoneAbbreviation;
  num? elevation;
  HourlyUnits? hourlyUnits;
  Hourly? hourly;
  DailyUnits? dailyUnits;
  Daily? daily;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['latitude'] = latitude;
    map['longitude'] = longitude;
    map['generationtime_ms'] = generationtimeMs;
    map['utc_offset_seconds'] = utcOffsetSeconds;
    map['timezone'] = timezone;
    map['timezone_abbreviation'] = timezoneAbbreviation;
    map['elevation'] = elevation;
    if (hourlyUnits != null) {
      map['hourly_units'] = hourlyUnits?.toJson();
    }
    if (hourly != null) {
      map['hourly'] = hourly?.toJson();
    }
    if (dailyUnits != null) {
      map['daily_units'] = dailyUnits?.toJson();
    }
    if (daily != null) {
      map['daily'] = daily?.toJson();
    }
    return map;
  }

}

class Daily {
  Daily({
      this.time, 
      this.weathercode, 
      this.temperature2mMax, 
      this.sunrise,});

  Daily.fromJson(dynamic json) {
    time = json['time'] != null ? json['time'].cast<String>() : [];
    weathercode = json['weathercode'] != null ? json['weathercode'].cast<num>() : [];
    temperature2mMax = json['temperature_2m_max'] != null ? json['temperature_2m_max'].cast<num>() : [];
    sunrise = json['sunrise'] != null ? json['sunrise'].cast<String>() : [];
  }
  List<String>? time;
  List<num>? weathercode;
  List<num>? temperature2mMax;
  List<String>? sunrise;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['time'] = time;
    map['weathercode'] = weathercode;
    map['temperature_2m_max'] = temperature2mMax;
    map['sunrise'] = sunrise;
    return map;
  }

}

class DailyUnits {
  DailyUnits({
      this.time, 
      this.weathercode, 
      this.temperature2mMax, 
      this.sunrise,});

  DailyUnits.fromJson(dynamic json) {
    time = json['time'];
    weathercode = json['weathercode'];
    temperature2mMax = json['temperature_2m_max'];
    sunrise = json['sunrise'];
  }
  String? time;
  String? weathercode;
  String? temperature2mMax;
  String? sunrise;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['time'] = time;
    map['weathercode'] = weathercode;
    map['temperature_2m_max'] = temperature2mMax;
    map['sunrise'] = sunrise;
    return map;
  }

}

class Hourly {
  Hourly({
      this.time, 
      this.rain, 
      this.cloudcoverLow,});

  Hourly.fromJson(dynamic json) {
    time = json['time'] != null ? json['time'].cast<String>() : [];
    rain = json['rain'] != null ? json['rain'].cast<num>() : [];
    cloudcoverLow = json['cloudcover_low'] != null ? json['cloudcover_low'].cast<num>() : [];
  }
  List<String>? time;
  List<num>? rain;
  List<num>? cloudcoverLow;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['time'] = time;
    map['rain'] = rain;
    map['cloudcover_low'] = cloudcoverLow;
    return map;
  }

}

class HourlyUnits {
  HourlyUnits({
      this.time, 
      this.rain, 
      this.cloudcoverLow,});

  HourlyUnits.fromJson(dynamic json) {
    time = json['time'];
    rain = json['rain'];
    cloudcoverLow = json['cloudcover_low'];
  }
  String? time;
  String? rain;
  String? cloudcoverLow;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['time'] = time;
    map['rain'] = rain;
    map['cloudcover_low'] = cloudcoverLow;
    return map;
  }

}