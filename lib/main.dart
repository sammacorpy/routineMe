import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:routineme/screens/dashboards.dart';
import 'package:routineme/screens/home.dart';
import 'package:routineme/themes/customcolors.dart';
import 'package:routineme/themes/globaltheme.dart';

// sample flutter app
void main() {
  runApp(
    const ProviderScope(child: MyApp())
  );
}

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
        '/profile': (context) => const DashboardScreen(),
        '/': (context) => const HomeScreen()
      },
      theme: theme.themeData,
      initialRoute: '/',
    );
  }
}
