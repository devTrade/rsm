import 'package:flutter/material.dart';
import 'package:rsm/ui/main/main_view_model.dart';
import 'package:rsm/widgets/footer_widget.dart/footer_widger.dart';
import 'package:rsm/widgets/home_widget.dart/middle_widget/middle_widget.dart';
import 'package:rsm/widgets/nav_bar_widget.dart/nav_bar_widget.dart';

// ignore: must_be_immutable
class HomeContentTablet extends StatelessWidget {
  // const HomeContentDesktop({Key? key}) : super(key: key);
  MainViewModel model;
  HomeContentTablet(this.model) {}

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NavBarWidget(
            isDarkTheme: model.isDarkTheme,
            onPressed: model.onPressedThemeChange),
        MiddleAreaWidget(),
        FooterWidget(),
      ],
    );
  }
}
