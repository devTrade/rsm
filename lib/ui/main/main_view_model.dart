import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:rsm/app/app.locator.dart';
import 'package:rsm/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked_themes/stacked_themes.dart';

class MainViewModel extends BaseViewModel {
  late bool isDarkTheme =
      SchedulerBinding.instance?.window.platformBrightness == Brightness.dark;
  final _nagivationService = locator<NavigationService>();

  String title = '';

  void startOnBoarding() {
    print('onboarding clicket');
    _nagivationService.navigateTo(Routes.onBoardingView);
  }

  void onPressedThemeChange(BuildContext context) {
    var themeManger = getThemeManager(context);
    if (isDarkTheme) {
      themeManger.setThemeMode(ThemeMode.light);
    } else {
      themeManger.setThemeMode(ThemeMode.dark);
    }
    isDarkTheme = !isDarkTheme;
    notifyListeners();
  }
}
