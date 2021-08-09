import 'package:flutter/material.dart';
import 'package:rsm/models/onboarding_questions.dart';
import 'package:rsm/widgets/onboardin_widget/question_widget.dart';

// ignore: must_be_immutable
class SubjectiveQuestions extends StatelessWidget {
  final List<OnboardingQuestionModel>? questions;
  final int questionIndex;
  final Function answerQuestion;
  TextEditingController _nameController = TextEditingController();

  SubjectiveQuestions({
    required this.questions,
    required this.answerQuestion,
    required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        QuestionWidget(
          questions![questionIndex].questionText,
        ),
        SizedBox(
          width: 300,
          child: TextField(
            controller: _nameController,
            textAlign: TextAlign.center,
            autofocus: true,
            style: TextStyle(fontSize: 50, height: 1.5),
          ),
        ),
        Spacer(),
        SizedBox(
          width: 150,
          child: ElevatedButton(
            onPressed: () {
              this.answerQuestion(_nameController.text);
            },
            child: Text('Next'),
          ),
        ),
      ],
    );
  }
}
