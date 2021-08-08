import 'package:flutter/material.dart';
import 'package:rsm/ui/main/main_view_model.dart';
import 'package:rsm/widgets/onboardin_widget/question_widget.dart';

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
      return Question(
        answerQuestion: model.answerQuestion,
        questionIndex: model.questionIndex,
        questions: model.getQuestions(),
      );
    if (type == 'sayHi') return Text('HI');
    if (type == 'question') return Text('Enter your name');

    return Text('Type Not Found');
  }
}
