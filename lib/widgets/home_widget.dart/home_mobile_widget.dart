import 'package:flutter/material.dart';
import 'package:rsm/app/shared/ui_helper.dart';
import 'package:rsm/ui/main/main_view_model.dart';
import 'package:rsm/widgets/nav_bar_widget.dart/nav_bar_widget.dart';
import 'middle_widget/middle_widget.dart';

// ignore: must_be_immutable
class HomeContentMobile extends StatelessWidget {
  // const HomeContentDesktop({Key? key}) : super(key: key);
  MainViewModel model;
  HomeContentMobile(this.model) {}

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NavBarWidget(
            isDarkTheme: model.isDarkTheme,
            onPressed: model.onPressedThemeChange),
        Expanded(
          flex: 2,
          child: Padding(
              padding: EdgeInsets.only(right: 20.0, left: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  MainHeadline(),
                  verticalSpaceMedium,
                  MainRightSubText(),
                  verticalSpaceLarge,
                  MainButtonBar(),
                ],
              )),
        ),
      ],
    );
  }
}
