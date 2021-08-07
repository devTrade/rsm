import 'package:flutter/material.dart';
import 'package:rsm/models/onboarding_questions.dart';

class Question extends StatelessWidget {
  final List<OnboardingQuestion>? questions;
  final int questionIndex;
  final Function answerQuestion;

  Question({
    required this.questions,
    required this.answerQuestion,
    required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _QuestionWidget(
          questions![questionIndex].questionText,
        ), //Question
        ...(questions![questionIndex].answers as List<String>).map((answer) {
          return Text(answer);
          // return Answer(() => answerQuestion(answer['score']), answer);
        }).toList()
      ],
    );
  }
}

class _QuestionWidget extends StatelessWidget {
  final String? questionText;

  _QuestionWidget(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questionText!,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ), //Text
    ); //Container
  }
}
