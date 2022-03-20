import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:routineme/components/bottomnavbar.dart';
import 'package:routineme/devicesettings/devicesettings.dart';
import 'package:routineme/themes/customcolors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}): super(key: key);  
  @override
  State<HomeScreen> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  String page = "Home";
  void changePage(val) {
    setState(() {
      page = val;
    });
  }

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
        color: CustomColors.bg1,
        child: ListView(
          children: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189]
              .map((e) => Container(
                  height: DeviceSettings.deviceHeight(context) * 0.15,
                  decoration: const BoxDecoration(
                      color: CustomColors.bg2,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  margin:
                      const EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 20),
                  padding: const EdgeInsets.all(10), 
                  child: Text(e.toString() + "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.")))
              .toList(),
        ),
      ),
      bottomNavigationBar: BottomNavBar(page: page, changePage: changePage),
    );
  }
}
