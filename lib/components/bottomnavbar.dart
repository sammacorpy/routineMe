import 'package:flutter/material.dart';
import 'package:routineme/components/navicons.dart';
import 'package:routineme/devicesettings/devicesettings.dart';
import 'package:routineme/themes/customcolors.dart';

class BottomNavBar extends StatefulWidget {
  BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  var active = "Home";
  void setActive(String val) {
    setState(() {
      active = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    double vw = DeviceSettings.deviceWidth(context);
    double vh = DeviceSettings.deviceHeight(context);

    return Container(
      padding: EdgeInsets.only(
          left: vw * 0.05,
          right: vw * 0.05,
          top: vw * 0.025,
          bottom: vw * 0.025),
      height: vh * 0.075,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(vw * 0.09),
            topRight: Radius.circular(vw * 0.09)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          NavIcons(
            text: "Home",
            setActive: () => setActive("Home"),
            active: active == "Home",
          ),
          NavIcons(
            text: "Routine",
            active: active == "Routine",
            setActive: ()=>setActive("Routine"),
          ),
          Container(
            decoration: BoxDecoration(
                color: CustomColors.accent1,
                borderRadius: const BorderRadius.all(Radius.circular(100)),
                border: Border.all(width: 1, color: CustomColors.accent1)),
            width: vh * 0.075 - vw * 0.05,
            padding: const EdgeInsets.all(2),
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                NavIcons(
                  active: active == 'Add',
                  color: CustomColors.primary1,
                )
              ],
            ),
          ),
          NavIcons(
            text: "Todo",
            setActive: ()=>setActive("Todo"),
            active: active == "Todo",
          ),
          NavIcons(
            text: "Me",
            setActive: ()=>setActive("Me"),
            active: active == "Me",
          ),
        ],
      ),
    );
  }
}
