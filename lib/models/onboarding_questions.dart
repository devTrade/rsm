class OnboardingQuestionsModel {
  String product = 'money';
  List<OnboardingQuestionModel> onboardingQuestion = [];

  OnboardingQuestionsModel(
      {required this.product, required this.onboardingQuestion});

  OnboardingQuestionsModel.fromJson(Map<String, dynamic> json) {
    product = json['product'];
    if (json['onboardingQuestion'] != null) {
      (json['onboardingQuestion'] as List).forEach((v) {
        if (v != null) {
          onboardingQuestion.add(new OnboardingQuestionModel.fromJson(v));
        }
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['product'] = this.product;
    data['onboardingQuestion'] =
        this.onboardingQuestion.map((v) => v.toJson()).toList();
    return data;
  }
}

class OnboardingQuestionModel {
  String type = 'sayHi';
  int? choice = 1;
  String? questionText;
  List<String>? answers;
  String? input;

  OnboardingQuestionModel(
      {required this.type,
      this.choice,
      this.questionText,
      this.answers,
      this.input});

  OnboardingQuestionModel.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    if (json['choice'] != null) {
      choice = int.tryParse(json['choice']) ?? 1;
    }
    questionText = json['questionText'];
    if (json['answers'] != null) {
      answers = json['answers'].cast<String>();
    }
    input = json['input'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['choice'] = this.choice?.toString();
    data['questionText'] = this.questionText;
    data['answers'] = this.answers;
    data['input'] = this.input;
    return data;
  }
}
