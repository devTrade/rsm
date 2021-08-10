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
	"onboardingQuestion": [{
		"type": "name",
		"questionText": "We'll need your name to kick this off ",
		"input": "text"
	}, {
		"type": "greeting",
		"questionText": "we believe you can be Bolder - bolder at work, bolder in your personal life, and bolder with money. \\n \\n We built Bolder, because we believe there’s a better way to take care of your finances, one that recognizes the emotional relationship you have with money. \\n \\n So, let’s dig into your relationship with money today."
	}, {
		"type": "choice",
		"questionText": "What are your financial priorities?",
		"choice": "2",
		"answers": ["Paying off a loan", "Planning for a purchase", "Thinking through retirement", "Starting a family"]
	}, {
		"type": "choice",
		"questionText": "Do you have saving set aside ?",
		"choice": "1",
		"answers": ["Yes", "No"]
	}]
}''');
