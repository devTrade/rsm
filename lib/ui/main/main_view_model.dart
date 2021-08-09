import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:rsm/app/app.locator.dart';
import 'package:rsm/models/onboarding_answeres.dart';
import 'package:rsm/models/onboarding_questions.dart';
import 'package:rsm/service/on_boarding_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_themes/stacked_themes.dart';

class MainViewModel extends BaseViewModel {
  late bool isDarkTheme =
      SchedulerBinding.instance?.window.platformBrightness == Brightness.dark;
  String title = '';
  int state = 0;
  List<OnboardingAnswerModel> obamList = [];

  final _onBoardingService = locator<OnBoardingService>();
  var _questionIndex = 0;
  late List<OnboardingQuestionModel> _questions;

  get questionIndex => _questionIndex;
  // get questions => _questions;

  List<OnboardingQuestionModel>? getQuestions() {
    _questions = _onBoardingService.getOnboardingQuestions().onboardingQuestion;
    return _questions;
  }

  // dynamic _awnsers;
  void answerQuestion(dynamic value) {
    if (_questions[questionIndex].questionText != null) {
      List<String> temp = [];
      if (value is List<String?> && value.length > 0) {
        temp = List.from(value);
      } else if (value.runtimeType == String) {
        temp.add(value);
      }
      OnboardingAnswerModel obam = new OnboardingAnswerModel(
          answer: temp, question: _questions[questionIndex].questionText!);
      obamList.add(obam);
      // print(obamList);
    }
    _questionIndex = _questionIndex + 1;

    // _awnsers = _awnsers + value;
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      state++;
      // OnBoardingAnswersModels obas =
      //     new OnBoardingAnswersModels(onboardingAnswer: obamList);
      //Todo : Ankit Save to firebase
      // print(jsonEncode(obas));
      // Move to login Screen
      print('No more questions!');
    }
    notifyListeners();
  }

  String getAnswerInRawString() {
    OnBoardingAnswersModels obas =
        new OnBoardingAnswersModels(onboardingAnswer: obamList);
    return jsonEncode(obas);
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
