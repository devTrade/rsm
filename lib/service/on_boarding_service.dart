import 'dart:convert';

import 'package:rsm/models/onboarding_questions.dart';

class OnBoardingService {
  OnboardingQuestions getOnboardingQuestions() {
    print(parsedJson);
    print('hi');
    OnboardingQuestions temp = OnboardingQuestions.fromJson(parsedJson);
    print(temp);
    print('hi');
    return temp;
  }
}

final Map<String, dynamic> parsedJson = json.decode('''{
    "product": "money",
    "onboardingQuestion": [
        {
            "type": "multiChoice",
            "questionText": "Q1. Who created Flutter?",
            "answers": [
                "Facebook",
                "Adobe",
                "Google",
                "Microsoft"
            ]
        },
        {
            "type": "singleChoice",
            "questionText": "Q2. What is Flutter?",
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
