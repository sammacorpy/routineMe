import 'package:flutter/material.dart';
import 'package:routineme/screens/dashboards.dart';
import 'package:routineme/screens/groceries.dart';
import 'package:routineme/screens/home.dart';
import 'package:routineme/screens/routines.dart';
import 'package:routineme/screens/todos.dart';
import 'package:routineme/themes/customcolors.dart';
import 'package:routineme/themes/globaltheme.dart';

// sample flutter app
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GlobalTheme theme = GlobalTheme(
      ctx: context,
      isDark: false,
      bg1: CustomColors.bg1,
      bg2: CustomColors.bg2,
      primary1: CustomColors.primary1,
      primary2: CustomColors.primary2,
      accent1: CustomColors.accent1,
      accent2: CustomColors.accent2,
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Routine Me',
      routes: {
        '/routines': (context) => const Routine(),
        '/todo': (context) => const Todo(),
        '/groceries': (context) => const Grocery(),
        '/dashboard': (context) => const Dashboard(),
        '/': (context) => const Home()
      },
      theme: theme.themeData,
      initialRoute: '/',
    );
  }
}
