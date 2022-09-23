import 'package:flutter/material.dart';

import 'colors.dart';

ThemeData theme() {
  final ThemeData base = ThemeData(
    fontFamily: 'Rubic',
    scaffoldBackgroundColor: const Color(0xFFFFFFFF),
    
  );

  return base.copyWith(
    colorScheme: base.colorScheme.copyWith(
      primary: purplePrimary,
      onPrimary: whitePure,
      secondary: yellowSecondary,
      onSecondary: blackGrey,
      background: lightPurple,
      onBackground: purplePrimary,
      surface: whitePerl,
      onSurface: blackGrey,
      error: lightRed,
      onError: whitePerl,
    ),
    textTheme: buildTextTheme(base.textTheme),
    inputDecorationTheme: buildInputRoundCorner(),
    elevatedButtonTheme: buildButtonTheme(),
  );
}

ElevatedButtonThemeData buildButtonTheme() {
  return ElevatedButtonThemeData(
    style: ButtonStyle(
      padding: MaterialStateProperty.all<EdgeInsets>(
        const EdgeInsets.only(left: 20, right: 20),
      ),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
          side: const BorderSide(
            color: purplePrimary,
          ),
        ),
      ),
    ),
  );
}

InputDecorationTheme buildInputRoundCorner() {
  return InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: const BorderSide(
        width: 0,
        style: BorderStyle.none,
      ),
    ),
    contentPadding: const EdgeInsets.all(16),
  );
}

TextTheme buildTextTheme(TextTheme base) {
  return base
      .copyWith(
        headline1: base.headline1!.copyWith(
          fontSize: 48,
          fontFamily: 'Anton',
        ),
        headline2: base.headline2!.copyWith(
          fontSize: 38,
          fontFamily: 'Anton',
        ),
        headline3: base.headline3!.copyWith(
          fontSize: 24,
          fontFamily: 'Anton',
        ),
        bodyText1: base.bodyText1!.copyWith(
          fontSize: 12,
          fontFamily: 'Rubik',
          fontWeight: FontWeight.w100,
          letterSpacing: 2,
        ),
        bodyText2: base.bodyText1!.copyWith(
          fontSize: 14,
          fontWeight: FontWeight.w300,
        ),
        subtitle1: base.subtitle1!.copyWith(
          fontSize: 24,
          fontWeight: FontWeight.w300,
        ),
       
      )
      .apply(
        // fontFamily: 'Rubic',
        displayColor: purplePrimary,
        bodyColor: blackGrey,
      );
}

ThemeData theme2() {
  return ThemeData(
    fontFamily: 'Rubic',
    scaffoldBackgroundColor: const Color(0xFFFFFFFF),
    colorScheme: const ColorScheme(
      primary: Color(0xFF69007F),
      secondary: Color(0xFFFFCA28),
      surface: Color(0xFFEEF0F2),
      background: Color(0xFFF3E5F5),
      error: Color(0xFFC83E4D),
      onPrimary: Color(0xFFFFFFFF),
      onSecondary: Color(0xFF2F2E41),
      onSurface: Color(0xFF2F2E41),
      onBackground: Color(0xFF69007F),
      onError: Color(0xFFFFCA28),
      brightness: Brightness.light,
    ),
    textTheme: const TextTheme(
      headline1: TextStyle(
        fontSize: 48,
        fontFamily: 'Anton',
        color: Color(0xFF69007F),
      ),
      headline2: TextStyle(
        fontSize: 38,
        fontFamily: 'Anton',
        color: Color(0xFF69007F),
      ),
      headline3: TextStyle(
        fontSize: 20,
        fontFamily: 'Anton',
        color: Color(0xFF9C27B0),
      ),
      bodyText1: TextStyle(
        fontSize: 12,
        fontFamily: 'Rubik',
        fontWeight: FontWeight.w100,
        letterSpacing: 3,
        color: Color(0xFF2F2E41),
      ),
      subtitle2: TextStyle(
        fontSize: 14,
        fontFamily: 'Pacifico',
        color: Color(0xFF69007F),
      ),
    ),
  );
}
