import 'package:rsm/app/app.locator.dart';
import 'package:rsm/models/onboarding_questions.dart';
import 'package:rsm/service/on_boarding_service.dart';
import 'package:stacked/stacked.dart';

class OnBoardingViewModel extends BaseViewModel {
  final _onBoardingService = locator<OnBoardingService>();
  var _questionIndex = 0;
  late List<OnboardingQuestion> _questions;

  get questionIndex => _questionIndex;
  // get questions => _questions;

  List<OnboardingQuestion>? getQuestions() {
    _questions = _onBoardingService.getOnboardingQuestions().onboardingQuestion;
    print(_questions[1].questionText);
    return _questions;
  }

  void answerQuestion() {
    _questionIndex = _questionIndex + 1;
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }
}
