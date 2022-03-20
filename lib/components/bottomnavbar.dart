import 'package:flutter/material.dart';
import 'package:routineme/components/floatingaddbutton.dart';
import 'package:routineme/components/interface/icons.dart';
import 'package:routineme/components/namedicons.dart';
import 'package:routineme/components/navicons.dart';
import 'package:routineme/devicesettings/devicesettings.dart';
import 'package:routineme/themes/customcolors.dart';

class BottomNavBar extends StatelessWidget {
  final String page;
  final void Function(String) changePage;
  const BottomNavBar({Key? key, required this.page, required this.changePage})
      : super(key: key);

  AppIcons _navBarIcons({
    required String page,
    required Map<IconState, IconData> icon,
    bool floating = false,
    required void Function() onClick,
    Color? color,
  }) {
    final isActive = page == this.page;
    color = color ?? (isActive ? CustomColors.primary2 : CustomColors.mattBlack);
    if (floating) {
      return FloatingIcon(
        icon: (isActive ? icon[IconState.active] : icon[IconState.deactive])
            as IconData,
        color: color,
        onClick: onClick,
      );
    }
    return NavIcons(
      text: page,
      icon: (isActive ? icon[IconState.active] : icon[IconState.deactive])
          as IconData,
      onClick: onClick,
      color: color,
    );
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
          _navBarIcons(page: "Home", icon: NamedIcons.home, onClick: () => changePage("Home")),
          _navBarIcons(page: "Routine", icon: NamedIcons.routine, onClick: () => changePage("Routine")),
          _navBarIcons(page: "Add", icon: NamedIcons.add, onClick: () => print("Add something"), floating: true),
          _navBarIcons(page: "Todo", icon: NamedIcons.todo, onClick: () => changePage("Todo")),
          _navBarIcons(page: "Grocery", icon: NamedIcons.grocery, onClick: () => changePage("Grocery")),
        ],
      ),
    );
  }
}
