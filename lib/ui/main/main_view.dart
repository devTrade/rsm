import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:rsm/ui/main/main_view_model.dart';
import 'package:rsm/widgets/center_widget.dart';
import 'package:rsm/widgets/home_widget.dart/home_mobile_widget.dart';
import 'package:rsm/widgets/home_widget.dart/home_tablet_widget.dart';
import 'package:stacked/stacked.dart';

class MainView extends StatelessWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MainViewModel>.reactive(
      builder: (context, model, child) => CenteredView(
        child: Scaffold(
            body: ScreenTypeLayout(
          tablet: HomeContentTablet(model),
          // HomeContentDesktop(),
          mobile: HomeContentMobile(model),
        )),
      ),
      viewModelBuilder: () => MainViewModel(),
    );
  }
}
