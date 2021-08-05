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
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Testting data and font',
                        // style: Theme.of(context).textTheme.,
                      ),
                      ThemeToggleButton(
                          isDarkTheme: model.isDarkTheme,
                          onPressed: model.onPressedThemeChange),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      viewModelBuilder: () => MainViewModel(),
    );
  }
}
