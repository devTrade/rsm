import 'dart:convert';

import 'package:rsm/models/onboarding_questions.dart';

class OnBoardingService {
  OnboardingQuestions getOnboardingQuestions() {
    print(parsedJson);
    OnboardingQuestions temp = OnboardingQuestions.fromJson(parsedJson);

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
                "Facebook",
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
            "type": "sayHi"
        },
        {
            "type": "question",
            "questionText": "Q2. What is Flutter?",
            "input": "text"
        }
    ]
}''');
