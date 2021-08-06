import 'package:flutter/material.dart';

final ThemeData _lightBase = ThemeData.light();
final ThemeData _darkBase = ThemeData.dark();

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  backgroundColor: Colors.black,
  scaffoldBackgroundColor: Colors.black,
  textTheme: _textTheme(_darkBase.textTheme),
  primaryTextTheme: _textTheme(_darkBase.textTheme),
);

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  backgroundColor: Colors.white,
  scaffoldBackgroundColor: Colors.white,
  textTheme: _textTheme(_lightBase.textTheme),
  primaryTextTheme: _textTheme(_lightBase.textTheme),
);

// . {
// font-family: GT Walsheim, ;

// font-size: 40px;
// letter-spacing: 0;
// font-style: normal;
// font-weight: 500;

// color: rgb(0,0,0);

// }
TextTheme _textTheme(TextTheme base) {
  return base
      .copyWith(
        headline5: base.headline5!.copyWith(
          fontWeight: FontWeight.w500,
          fontSize: 40.0,
        ),
        headline6: base.headline6!.copyWith(
          fontSize: 18.0,
        ),
        caption: base.caption!.copyWith(
          fontWeight: FontWeight.w400,
          fontSize: 14.0,
        ),
        bodyText1: base.bodyText1!.copyWith(
          fontWeight: FontWeight.w500,
          fontSize: 16.0,
        ),
      )
      .apply(
        fontFamily: 'GTWalsheimPro',
      );
}
