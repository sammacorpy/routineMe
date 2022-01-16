import 'package:flutter/material.dart';
import 'package:routineme/components/navicons.dart';
import 'package:routineme/devicesettings/devicesettings.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    double vw = DeviceSettings.deviceWidth(context);
    double vh = DeviceSettings.deviceHeight(context);

    return Container(
      padding: EdgeInsets.only(left: vw * 0.05, right: vw * 0.05, top: vw * 0.025, bottom: vw * 0.025),
      height: vh * 0.07,
      decoration: const BoxDecoration( 
        borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10) ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          const NavIcons(iconData: Icons.home_outlined, text: "Home"),
          const NavIcons(iconData: Icons.av_timer_outlined, text: "Routine",),
          Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(100)),
              border: Border.all(width: 1)
            ),
            width: vh * 0.07 - vw * 0.05,
            padding: const EdgeInsets.all(2),
            alignment: Alignment.center,
            
            
            child: const NavIcons(iconData: Icons.add, color: Colors.amberAccent),
            
          ),
          const NavIcons(iconData: Icons.checklist_rounded, text: "Todo",),
          const NavIcons(iconData: Icons.account_box_outlined, text: "Me",),


        
      ],),
    );
  }

  
}