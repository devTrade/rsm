import 'package:flutter/material.dart';
import 'package:rsm/ui/main/main_view_model.dart';
import 'package:rsm/widgets/onboardin_widget/widgets/multi_choice_question_widget.dart';
import 'package:rsm/widgets/onboardin_widget/widgets/subjective_question_widget.dart';

import 'widgets/animation_greeting_widget.dart';

class OnBoardingWidget extends StatelessWidget {
  final MainViewModel model;
  OnBoardingWidget(this.model) {}
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 10,
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: _type(model.getQuestions()![model.questionIndex].type), //Quiz
      ),
    );
  }

  Widget _type(String type) {
    // multiChoice , singleChoice . sayHi , question
    if (type == 'choice')
      return MultiChoiceQuestion(
        answerQuestion: model.answerQuestion,
        questionIndex: model.questionIndex,
        questions: model.getQuestions(),
      );
    if (type == 'question')
      return SubjectiveQuestions(
        answerQuestion: model.answerQuestion,
        questionIndex: model.questionIndex,
        questions: model.getQuestions(),
        isName: false,
      );
    if (type == 'sayHi') return Text('HI');
    if (type == 'name')
      return SubjectiveQuestions(
        answerQuestion: model.answerQuestion,
        questionIndex: model.questionIndex,
        questions: model.getQuestions(),
        isName: true,
      );

    if (type == 'greeting') {
      return AnimatedGreetingWidget(
        questionIndex: model.questionIndex,
        questions: model.getQuestions(),
        answerQuestion: model.answerQuestion,
        name: model.name,
      );
    }

    return Text('Type Not Found');
  }
}
