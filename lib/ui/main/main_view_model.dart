import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:rsm/app/app.locator.dart';
import 'package:rsm/models/onboarding_questions.dart';
import 'package:rsm/service/on_boarding_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_themes/stacked_themes.dart';

class MainViewModel extends BaseViewModel {
  late bool isDarkTheme =
      SchedulerBinding.instance?.window.platformBrightness == Brightness.dark;
  String title = '';
  int state = 0;

  final _onBoardingService = locator<OnBoardingService>();
  var _questionIndex = 0;
  late List<OnboardingQuestion> _questions;

  get questionIndex => _questionIndex;
  // get questions => _questions;

  List<OnboardingQuestion>? getQuestions() {
    _questions = _onBoardingService.getOnboardingQuestions().onboardingQuestion;
    return _questions;
  }

  void answerQuestion(dynamic value) {
    _questionIndex = _questionIndex + 1;

    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
    notifyListeners();
  }

  void onPressedThemeChange(BuildContext context) {
    var themeManger = getThemeManager(context);
    if (isDarkTheme) {
      themeManger.setThemeMode(ThemeMode.light);
    } else {
      themeManger.setThemeMode(ThemeMode.dark);
    }
    isDarkTheme = !isDarkTheme;
    notifyListeners();
  }

  void startOnBoarding() {
    state++;
    notifyListeners();
  }
}
