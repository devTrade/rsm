import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ThemeToggleButton extends StatelessWidget {
  bool isDarkTheme;
  Function onPressed;
  ThemeToggleButton({required this.isDarkTheme, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
        BoxShadow(
          color: Colors.grey,
          blurRadius: 40.0,
        ),
      ]),
      child: IconButton(
        iconSize: 30.0,
        padding: EdgeInsets.all(5),
        icon: Padding(
            padding: EdgeInsets.zero,
            child: isDarkTheme == true
                ? FaIcon(FontAwesomeIcons.moon)
                : FaIcon(FontAwesomeIcons.sun)),
        onPressed: () {
          onPressed(context);
        },
      ),
    );
  }
}
