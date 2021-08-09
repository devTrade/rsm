import 'package:flutter/material.dart';
import 'package:rsm/app/shared/lib/multi_selected_fields.dart';
import 'package:rsm/app/shared/ui_helper.dart';
import 'package:rsm/models/onboarding_questions.dart';
import 'package:rsm/widgets/onboardin_widget/question_widget.dart';

// ignore: must_be_immutable
class MultiChoiceQuestion extends StatelessWidget {
  final List<OnboardingQuestionModel>? questions;
  final int questionIndex;
  final Function answerQuestion;

  MultiChoiceQuestion({
    required this.questions,
    required this.answerQuestion,
    required this.questionIndex,
  });
  // final _formKeyScreen1 = GlobalKey<FormState>();

  final _reSetKey = GlobalKey<FormFieldState<dynamic>>();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        QuestionWidget(
          questions![questionIndex].questionText,
        ), //Question
        verticalSpaceLarge,
        MultiSelectChipField<String?>(
          key: _reSetKey,
          headerColor: Theme.of(context).backgroundColor,
          items: questions![questionIndex]
              .answers!
              .map((e) => MultiSelectItem<String?>(e, e))
              .toList(),
          icon: Icon(Icons.check),
          onTap: (values) {
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
