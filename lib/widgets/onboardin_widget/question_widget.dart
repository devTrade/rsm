import 'package:flutter/material.dart';

class QuestionWidget extends StatelessWidget {
  final String? questionText;

  QuestionWidget(this.questionText);

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
