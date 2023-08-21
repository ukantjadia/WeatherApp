import 'OnboardQuestions.dart';

class OnboardCategories {
  OnboardCategories({
      this.id, 
      this.categoryName, 
      this.onboardQuestions,});

  OnboardCategories.fromJson(dynamic json) {
    id = json['id'];
    categoryName = json['category_name'];
    if (json['onboard_questions'] != null) {
      onboardQuestions = [];
      json['onboard_questions'].forEach((v) {
        onboardQuestions.add(OnboardQuestions.fromJson(v));
      });
    }
  }
  int id;
  String categoryName;
  List<OnboardQuestions> onboardQuestions;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['category_name'] = categoryName;
    if (onboardQuestions != null) {
      map['onboard_questions'] = onboardQuestions.map((v) => v.toJson()).toList();
    }
    return map;
  }

}