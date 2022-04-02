import 'package:flutter/material.dart';
import 'package:routineme/themes/customcolors.dart';
import 'package:google_fonts/google_fonts.dart';

// create theme for RoutineMe app
class GlobalTheme {
  final Color bg1;
  final Color bg2;
  final Color primary1;
  final Color primary2;
  final Color accent1;
  final Color accent2;
  final bool isDark;
  final BuildContext ctx;

  /// Default constructor
  const GlobalTheme({
    required this.ctx,
    required this.isDark,
    required this.accent1,
    required this.accent2,
    required this.primary1,
    required this.primary2,
    required this.bg1,
    required this.bg2,
  });

  ThemeData get themeData {
    /// Create a TextTheme and ColorScheme, that we can use to generate ThemeData
    TextTheme txtTheme =
        (isDark ? ThemeData.dark() : ThemeData.light()).textTheme;
    Color txtColor = txtTheme.bodyText1?.color as Color;
    ColorScheme colorScheme = ColorScheme(
      // Decide how you want to apply your own custom them, to the MaterialApp
      brightness: isDark ? Brightness.dark : Brightness.light,
      primary: primary1,
      primaryVariant: primary2,
      secondary: accent1,
      secondaryVariant: accent2,
      background: bg1,
      surface: bg2,
      onBackground: txtColor,
      onSurface: txtColor,
      error: Colors.redAccent,
      onError: Colors.red.shade100,
      onPrimary: CustomColors.primaryText,
      onSecondary: CustomColors.secondaryText,
    );

    /// Now that we have ColorScheme and TextTheme, we can create the ThemeData
    var t = ThemeData.from(
      textTheme: GoogleFonts.latoTextTheme(Theme.of(ctx).textTheme),
      colorScheme: colorScheme,
    ).copyWith(
      buttonTheme: ButtonThemeData(buttonColor: accent1),
      highlightColor: accent1,
      toggleableActiveColor: accent2,
      primaryColor: primary1,
      textSelectionTheme: TextSelectionThemeData(cursorColor: accent2),
    );

    /// Return the themeData which MaterialApp can now use
    return t;
  }
}
