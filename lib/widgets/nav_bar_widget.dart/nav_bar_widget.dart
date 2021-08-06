import 'package:flutter/cupertino.dart';

import '../theme_toggle_widget.dart';

// ignore: must_be_immutable
class NavBarWidget extends StatelessWidget {
  bool isDarkTheme;
  Function onPressed;
  NavBarWidget({required this.isDarkTheme, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(0, 30, 30, 0),
              child: ThemeToggleButton(
                isDarkTheme: this.isDarkTheme,
                onPressed: this.onPressed,
              ),
            )
          ],
        ));
  }
}
