class OnboardingQuestions {
  String product = 'money';
  List<OnboardingQuestion> onboardingQuestion = [];

  OnboardingQuestions(
      {required this.product, required this.onboardingQuestion});

  OnboardingQuestions.fromJson(Map<String, dynamic> json) {
    product = json['product'];
    if (json['onboardingQuestion'] != null) {
      (json['onboardingQuestion'] as List).forEach((v) {
        if (v != null) {
          print(v);
          onboardingQuestion.add(new OnboardingQuestion.fromJson(v));
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

class OnboardingQuestion {
  String type = 'sayHi';
  String? questionText;
  List<String>? answers;
  String? input;

  OnboardingQuestion(
      {required this.type, this.questionText, this.answers, this.input});

  OnboardingQuestion.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    questionText = json['questionText'];
    if (json['answers'] != null) {
      answers = json['answers'].cast<String>();
    }
    input = json['input'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['questionText'] = this.questionText;
    data['answers'] = this.answers;
    data['input'] = this.input;
    return data;
  }
}
