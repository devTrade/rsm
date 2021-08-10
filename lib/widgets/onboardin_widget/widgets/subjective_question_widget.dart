import 'package:flutter/material.dart';
import 'package:rsm/app/shared/ui_helper.dart';
import 'package:rsm/models/onboarding_questions.dart';
import 'package:rsm/widgets/onboardin_widget/widgets/question_widget.dart';

// ignore: must_be_immutable
class SubjectiveQuestions extends StatelessWidget {
  final List<OnboardingQuestionModel>? questions;
  final int questionIndex;
  final Function answerQuestion;
  final bool isName;
  TextEditingController _nameController = TextEditingController();
  SubjectiveQuestions({
    required this.questions,
    required this.answerQuestion,
    required this.questionIndex,
    required this.isName,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        QuestionWidget(
          questions![questionIndex].questionText,
        ),
        Center(
            child: Column(
          children: [
            Text('Already a member ?'),
            verticalSpaceSmall,
            TextButton(
              onPressed: () {},
              child: Text("Login"),
            )
          ],
        )),
        verticalSpaceLarge,
        SizedBox(
          width: 300,
          child: TextField(
            controller: _nameController,
            textAlign: TextAlign.center,
            autofocus: true,
            style: TextStyle(fontSize: 30, height: 1.5),
          ),
        ),
        Spacer(),
        SizedBox(
          width: 150,
          height: 50,
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
