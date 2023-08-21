import 'UserDetail.dart';
import 'OnboardCategories.dart';

class NewJsondata2 {
  NewJsondata2({
      this.userDetail, 
      this.onboardCategories, 
      this.message, 
      this.status,});

  NewJsondata2.fromJson(dynamic json) {
    userDetail = json['user_detail'] != null ? UserDetail.fromJson(json['user_detail']) : null;
    if (json['onboard_categories'] != null) {
      onboardCategories = [];
      json['onboard_categories'].forEach((v) {
        onboardCategories.add(OnboardCategories.fromJson(v));
      });
    }
    message = json['message'];
    status = json['status'];
  }
  UserDetail userDetail;
  List<OnboardCategories> onboardCategories;
  String message;
  int status;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (userDetail != null) {
      map['user_detail'] = userDetail.toJson();
    }
    if (onboardCategories != null) {
      map['onboard_categories'] = onboardCategories.map((v) => v.toJson()).toList();
    }
    map['message'] = message;
    map['status'] = status;
    return map;
  }

}