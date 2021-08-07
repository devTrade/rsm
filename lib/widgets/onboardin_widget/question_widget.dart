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
        Text(
          questions![questionIndex].questionText ?? '',
        ), //Question
        // ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
        //     .map((answer) {
        //   return Answer(() => answerQuestion(answer['score']), answer['text']);
        // }).toList()
      ],
    ); //Column
  }
}
