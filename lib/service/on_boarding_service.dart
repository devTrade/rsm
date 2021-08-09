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
            "questionText": "Q1. Who created Flutter?",
            "choice": "3",
            "answers": [
                "Facebookfd sfdzfsf sdfsdfsdsf",
                "Adobe",
                "Google",
                "Microsoft"
            ]
        },
        {
            "type": "choice",
            "questionText": "Q2. What is Flutter?",
             "choice" : "1",
            "answers": [
                "Android Development Kit",
                "IOS Development Kit",
                "Web Development Kit"
            ]
        },
        {
            "type": "question",
            "questionText": "Enter your Name",
            "input": "text"
        }
    ]
}''');
