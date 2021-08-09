import 'package:flutter/material.dart';
import 'package:rsm/app/shared/ui_helper.dart';
import 'package:rsm/ui/main/main_view_model.dart';
import 'package:rsm/widgets/nav_bar_widget.dart/nav_bar_widget.dart';
import 'package:rsm/widgets/onboardin_widget/onboarding_widget.dart';
import 'middle_widget/middle_widget.dart';

// ignore: must_be_immutable
class HomeContentMobile extends StatelessWidget {
  // const HomeContentDesktop({Key? key}) : super(key: key);
  final MainViewModel model;
  HomeContentMobile(this.model) {}

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NavBarWidget(
            isDarkTheme: model.isDarkTheme,
            onPressed: model.onPressedThemeChange),
        _state(model),
      ],
    );
  }

  Widget _state(MainViewModel model) {
    if (model.state == 0) {
      return Expanded(
        flex: 4,
        child: Padding(
            padding: EdgeInsets.only(right: 20.0, left: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                MainHeadline(),
                verticalSpaceMedium,
                MainRightSubText(),
                verticalSpaceLarge,
                MainButtonBar(model),
              ],
            )),
      );
    } else if (model.state == 1) {
      return OnBoardingWidget(model);
    } else {
      return Text("Show Puppy Image");
    }
  }
}
