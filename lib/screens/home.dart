import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:routineme/components/bottomnavbar.dart';
import 'package:routineme/themes/customcolors.dart';
import 'package:routineme/providers/switchtab.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Routine Me"),
        titleTextStyle: TextStyle(
          fontFamily:
              GoogleFonts.changa(fontWeight: FontWeight.bold).fontFamily,
          color: CustomColors.primaryText,
        ),
        elevation: 0,
      ),
      body: Container(
        color: CustomColors.white,
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
