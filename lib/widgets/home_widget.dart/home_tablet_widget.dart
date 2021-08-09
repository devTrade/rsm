import 'package:flutter/material.dart';
import 'package:rsm/app/shared/ui_helper.dart';
import 'package:rsm/ui/main/main_view_model.dart';
import 'package:rsm/widgets/footer_widget.dart/footer_widger.dart';
import 'package:rsm/widgets/home_widget.dart/middle_widget/middle_widget.dart';
import 'package:rsm/widgets/nav_bar_widget.dart/nav_bar_widget.dart';
import 'package:rsm/widgets/onboardin_widget/onboarding_widget.dart';

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
        _state(model),
        FooterWidget(),
      ],
    );
  }

  Widget _state(MainViewModel model) {
    if (model.state == 0) {
      return MiddleTabletAreaWidget(model);
    } else if (model.state == 1) {
      return OnBoardingWidget(model);
    } else {
      return Expanded(
          flex: 5,
          child: Column(
            children: [
              Text(
                model.getAnswerInRawString(),
              ),
              ElevatedButton(onPressed: () {}, child: Text('Save to DB'))
            ],
          ));
    }
  }
}

class MiddleTabletAreaWidget extends StatelessWidget {
  final MainViewModel model;
  const MiddleTabletAreaWidget(this.model, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 10,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: MainHeadline(),
            ),
            Expanded(
              flex: 5,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MainLeftImage(),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 80.0),
                      child: Column(
                        children: [
                          MainRightSubText(),
                          verticalSpaceLarge,
                          MainButtonBar(model),
                          // RSButton(title: 'Start'),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
