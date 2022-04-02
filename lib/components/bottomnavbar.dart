import 'package:flutter/material.dart';
import 'package:routineme/components/addbutton.dart';
import 'package:routineme/components/navicons.dart';
import 'package:routineme/devicesettings/devicesettings.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    double vw = DeviceSettings.deviceWidth(context);
    double vh = DeviceSettings.deviceHeight(context);

    return Container(
      height: vh * 0.08,
      padding: EdgeInsets.only(
        left: vw * 0.05,
        right: vw * 0.05,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const <Widget>[
          NavIcons(text: "Home"),
          NavIcons(text: "Routine"),
          AddIcon(),
          NavIcons(text: "Todo"),
          NavIcons(text: "Grocery"),
        ],
      ),
    );
  }
}
