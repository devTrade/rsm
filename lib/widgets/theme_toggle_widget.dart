import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// ignore: must_be_immutable
class ThemeToggleButton extends StatelessWidget {
  bool isDarkTheme;
  Function onPressed;
  ThemeToggleButton({required this.isDarkTheme, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
      decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          blurRadius: 40.0,
        ),
      ]),
      child: IconButton(
        iconSize: 30.0,
        icon: Padding(
            padding: EdgeInsets.zero,
            child: isDarkTheme == true
                ? FaIcon(FontAwesomeIcons.moon)
                : FaIcon(
                    FontAwesomeIcons.sun,
                    color: Color(0Xffffa726),
                  )),
        onPressed: () {
          onPressed(context);
        },
      ),
    );
  }
}
