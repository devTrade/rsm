import 'package:flutter/material.dart';
import 'package:rsm/ui/main/main_view_model.dart';
import 'package:rsm/widgets/center_widget.dart';
import 'package:rsm/widgets/theme_toggle_widget.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_themes/stacked_themes.dart';

class MainView extends StatelessWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MainViewModel>.reactive(
      builder: (context, model, child) => CenteredView(
        child: Scaffold(
            body: ThemeToggleButton(
                isDarkTheme: model.isDarkTheme,
                onPressed: model.onPressedThemeChange)),
      ),
      viewModelBuilder: () => MainViewModel(),
    );
  }
}
