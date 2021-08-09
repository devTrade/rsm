class OnBoardingAnswersModels {
  List<OnboardingAnswerModel> onboardingAnswer = [];

  OnBoardingAnswersModels({required this.onboardingAnswer});

  OnBoardingAnswersModels.fromJson(Map<String, dynamic> json) {
    if (json['OnboardingAnswer'] != null) {
      json['OnboardingAnswer'].forEach((v) {
        onboardingAnswer.add(new OnboardingAnswerModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['OnboardingAnswer'] =
        this.onboardingAnswer.map((v) => v.toJson()).toList();
    return data;
  }
}

class OnboardingAnswerModel {
  String question = '';
  List<String> answer = [];

  OnboardingAnswerModel({required this.question, required this.answer});

  OnboardingAnswerModel.fromJson(Map<String, dynamic> json) {
    question = json['question'];
    answer = json['answer'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['question'] = this.question;
    data['answer'] = this.answer;
    return data;
  }
}
