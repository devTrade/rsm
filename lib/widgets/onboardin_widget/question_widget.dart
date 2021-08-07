import 'package:flutter/material.dart';
import 'package:multi_select_flutter/chip_field/multi_select_chip_field.dart';
import 'package:rsm/models/onboarding_questions.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';

class Question extends StatelessWidget {
  final List<OnboardingQuestion>? questions;
  final int questionIndex;
  final Function answerQuestion;

  Question({
    required this.questions,
    required this.answerQuestion,
    required this.questionIndex,
  });

  List<String?> _selectedOptions = [];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _QuestionWidget(
          questions![questionIndex].questionText,
        ), //Question
        MultiSelectChipField<String?>(
          items: questions![questionIndex]
              .answers!
              .map((e) => MultiSelectItem<String?>(e, e))
              .toList(),
          icon: Icon(Icons.check),
          onTap: (values) {
            _selectedOptions = values;
            print(_selectedOptions);
          },
        ),
        // ...(questions![questionIndex].answers as List<String>).map((answer) {
        //   return Text(answer);
        //   // return Answer(() => answerQuestion(answer['score']), answer);
        // }).toList()
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
        style: Theme.of(context).textTheme.headline5,
        // style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ), //Text
    ); //Container
  }
}

class Animal {
  final int id;
  final String name;

  Animal({
    required this.id,
    required this.name,
  });
}
