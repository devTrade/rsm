// import 'package:flutter/material.dart';
// import 'package:rsm/widgets/onboardin_widget/question_widget.dart';
// import 'package:stacked/stacked.dart';

// import 'onboarding_view_model.dart';

// class OnBoardingView extends StatelessWidget {
//   const OnBoardingView({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ViewModelBuilder<OnBoardingViewModel>.reactive(
//       builder: (context, model, child) => Scaffold(
//         body: Padding(
//             padding: const EdgeInsets.all(30.0),
//             child: Question(
//               answerQuestion: model.answerQuestion,
//               questionIndex: model.questionIndex,
//               questions: model.getQuestions(),
//             ) //Quiz
//             ), //Padding
//       ), //Sca
//       viewModelBuilder: () => OnBoardingViewModel(),
//     );
//   }
// }
