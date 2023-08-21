class UserDetail {
  UserDetail({
      this.name, 
      this.phone, 
      this.email, 
      this.countryCode,});

  UserDetail.fromJson(dynamic json) {
    name = json['name'];
    phone = json['phone'];
    email = json['email'];
    countryCode = json['country_code'];
  }
  String name;
  String phone;
  String email;
  String countryCode;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['phone'] = phone;
    map['email'] = email;
    map['country_code'] = countryCode;
    return map;
  }

}