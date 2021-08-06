import 'package:flutter/material.dart';
import 'package:rsm/ui/main/main_view_model.dart';
import 'package:rsm/widgets/nav_bar_widget.dart/nav_bar_widget.dart';

import '../theme_toggle_widget.dart';

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
        // CourseDetails(),

        Expanded(
          child: Center(
            child: Text('mobile Area'),
          ),
        ),
        Text('footer'),
      ],
    );
  }
}
