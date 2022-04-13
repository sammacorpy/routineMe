import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:routineme/components/bottomnavbar.dart';
import 'package:routineme/components/namedicons.dart';
import 'package:routineme/providers/switchtab.dart';
import 'package:routineme/screens/dashboards.dart';
import 'package:routineme/screens/groceries.dart';
import 'package:routineme/screens/routines.dart';
import 'package:routineme/screens/todos.dart';
import 'package:routineme/themes/customcolors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Consumer(
            builder: (context, ref, child) {
              String tab = ref.watch(switchTabProvider).value.toString();
              String appHeaderText = tab == "Home" ? "Dashboard" : tab;
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(appHeaderText, textScaleFactor: 1.4,),
                  IconButton(
                    color: CustomColors.mattBlack,
                    onPressed: () {},
                    icon: Icon(NamedIcons.profile[IconState.active]),
                  ),
                ],
              );
            },
          ),
          titleTextStyle: TextStyle(
            fontFamily:
                GoogleFonts.changa(fontWeight: FontWeight.bold).fontFamily,
            color: CustomColors.primaryText,
          ),
          elevation: 0,
        ),
        body: Consumer(
          builder: (context, ref, child) {
            String tab = ref.watch(switchTabProvider).value.toString();
            switch (tab) {
              case "Todo":
                return const TodoScreen();
              case "Routine":
                return const RoutineScreen();
              case "Grocery":
                return const GroceryScreen();
              case "Home":
              default:
                return const DashboardScreen();
            }
          },
        ),
        bottomNavigationBar: const BottomNavBar(),
    );
  }
}
