import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:routineme/components/bottomnavbar.dart';
import 'package:routineme/themes/customcolors.dart';

class MyScaffold extends StatelessWidget {
  final String appBarTitle;
  final Widget body;
  const MyScaffold({Key? key, required this.appBarTitle, required this.body})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appBarTitle),
        titleTextStyle: TextStyle(
          fontFamily:
              GoogleFonts.changa(fontWeight: FontWeight.bold).fontFamily,
          color: CustomColors.primaryText,
        ),
        elevation: 0,
      ),
      body: body,
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
