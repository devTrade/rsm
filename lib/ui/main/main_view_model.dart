import 'package:flutter/material.dart';
import 'package:rsm/app/app.locator.dart';
import 'package:rsm/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked_themes/stacked_themes.dart';

class MainViewModel extends BaseViewModel {
  late bool isDarkTheme = false;
  final _nagivationService = locator<NavigationService>();

  String title = '';

  void doSomething() {
    _nagivationService.navigateTo(Routes.darkLightView);
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
