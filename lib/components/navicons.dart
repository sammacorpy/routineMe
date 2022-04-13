import 'package:flutter/material.dart';
import 'package:routineme/components/interface/appicons.dart';
import 'package:routineme/components/namedicons.dart';
import 'package:routineme/devicesettings/devicesettings.dart';
import 'package:routineme/providers/switchtab.dart';
import 'package:routineme/themes/customcolors.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NavIcons extends AppIcons {
  final String tab;
  const NavIcons({
    Key? key,
    required this.tab,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // get scale of device
    double scale = DeviceSettings.textScaleFactor(context);
    double vw = DeviceSettings.deviceWidth(context);
    bool isActive =ref.watch(isActiveProvider(tab));
    IconData icon = NamedIcons.getIcon(tab, isActive);
    Color color = isActive ? CustomColors.accent1 : CustomColors.mattBlack;


    // return NavIcons widget
    return Container(
      padding: EdgeInsets.only(
        top: vw * 0.025,
        bottom: vw * 0.025,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: scale * 30,
            child: IconButton(
              onPressed: () => ref.watch(switchTabProvider).changeTab(tab),
              padding: const EdgeInsets.all(0),
              splashRadius: scale * 20,
              splashColor: CustomColors.splashColor,
              hoverColor: CustomColors.splashColor,
              focusColor: CustomColors.splashColor,
              highlightColor: CustomColors.splashColor,
              iconSize: 13,
              enableFeedback: false,
              icon: Icon(
                icon,
                size: scale * 25,
                color: color,
              ),
            ),
          ),
          Text(
            tab,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: scale * 10,
              color: color,
            ),
          ),
        ],
      ),
    );
  }
}
