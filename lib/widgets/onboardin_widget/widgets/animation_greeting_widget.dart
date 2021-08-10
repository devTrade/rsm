import 'package:flutter/material.dart';
import 'package:rsm/app/shared/ui_helper.dart';
import 'package:rsm/models/onboarding_questions.dart';

class AnimatedGreetingWidget extends StatefulWidget {
  final List<OnboardingQuestionModel>? questions;
  final int questionIndex;
  final String name;
  final Function answerQuestion;
  const AnimatedGreetingWidget({
    Key? key,
    this.questions,
    required this.questionIndex,
    required this.answerQuestion,
    required this.name,
  }) : super(key: key);
  @override
  _AnimatedGreetingWidgetState createState() =>
      _AnimatedGreetingWidgetState(this.name);
}

class _AnimatedGreetingWidgetState extends State<AnimatedGreetingWidget> {
  final String name;

  _AnimatedGreetingWidgetState(this.name);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 50.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          verticalSpaceLarge,
          Text('Nice to meet you, ${this.name}!',
              style: Theme.of(context).textTheme.headline2),
          verticalSpaceMedium,
          Image.asset(
            "assets/hand.gif",
            height: 200.0,
            width: 200.0,
          ),
        ],
      ),
    );
  }
}
