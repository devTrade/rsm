import 'package:flutter/material.dart';
import 'package:rsm/app/shared/lib/multi_selected_fields.dart';
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
  // final _formKeyScreen1 = GlobalKey<FormState>();

  final _reSetKey = GlobalKey<FormFieldState<dynamic>>();
  List<String?> _selectedOptions = [];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _QuestionWidget(
          questions![questionIndex].questionText,
        ), //Question
        MultiSelectChipField<String?>(
          key: _reSetKey,
          headerColor: Theme.of(context).backgroundColor,
          items: questions![questionIndex]
              .answers!
              .map((e) => MultiSelectItem<String?>(e, e))
              .toList(),
          icon: Icon(Icons.check),
          onTap: (values) {
            print(questions![questionIndex].choice);
            _selectedOptions = values;
            print(_selectedOptions);

            if (questions![questionIndex].choice != null &&
                questions![questionIndex].choice == values.length) {
              _reSetKey.currentState!.reset();
              answerQuestion(values);
            }
          },
        ),
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
