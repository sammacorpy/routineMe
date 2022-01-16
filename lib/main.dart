import 'package:flutter/material.dart';
import 'package:routineme/screens/dashboards.dart';
import 'package:routineme/screens/groceries.dart';
import 'package:routineme/screens/home.dart';
import 'package:routineme/screens/routines.dart';
import 'package:routineme/screens/todos.dart';
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
      bg1: const Color(0xFFF6F6F6),
      bg2: const Color(0xFFFCFCFC),
      primary1: const Color(0xFFF6F6F6),
      primary2: const Color(0xFF010101),
      accent1: const Color(0xFF0CD06D),
      accent2: const Color(0xFF0CD06D),
    );
    return MaterialApp(
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