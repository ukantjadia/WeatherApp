class OnboardQuestions {
  OnboardQuestions({
      this.id, 
      this.categoryId, 
      this.questionName, 
      this.placeholder, 
      this.options, 
      this.attributeName, 
      this.locale, 
      this.createdAt, 
      this.updatedAt,});

  OnboardQuestions.fromJson(dynamic json) {
    id = json['id'];
    categoryId = json['category_id'];
    questionName = json['question_name'];
    placeholder = json['placeholder'];
    options = json['options'];
    attributeName = json['attribute_name'];
    locale = json['locale'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }
  int id;
  int categoryId;
  String questionName;
  dynamic placeholder;
  String options;
  String attributeName;
  String locale;
  dynamic createdAt;
  dynamic updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['category_id'] = categoryId;
    map['question_name'] = questionName;
    map['placeholder'] = placeholder;
    map['options'] = options;
    map['attribute_name'] = attributeName;
    map['locale'] = locale;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    return map;
  }

}