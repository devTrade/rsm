import 'dart:convert';

import 'package:rsm/models/onboarding_questions.dart';

class OnBoardingService {
  OnboardingQuestionsModel getOnboardingQuestions() {
    OnboardingQuestionsModel temp =
        OnboardingQuestionsModel.fromJson(parsedJson);

    return temp;
  }
}

final Map<String, dynamic> parsedJson = json.decode('''{
    "product": "money",
    "onboardingQuestion": [
        {
            "type": "choice",
            "questionText": "What are your financial priorities?",
            "choice": "2",
            "answers": [
                "Paying off a loan",
                "Planning for a purchase",
                "Thinking through retirement",
                "Starting a family"
            ]
        },
        {
            "type": "choice",
            "questionText": "Do you have saving set aside ?",
             "choice" : "1",
            "answers": [
                "Yes",
                "No"
            ]
        },
        {
            "type": "question",
            "questionText": "Enter your Name",
            "input": "text"
        }
    ]
}''');
