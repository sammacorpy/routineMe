import 'package:flutter/material.dart';
import 'package:routineme/components/interface/icons.dart';
import 'package:routineme/devicesettings/devicesettings.dart';
import 'package:routineme/themes/customcolors.dart';

class NavIcons extends AppIcons{
  final String text;
  final IconData icon;
  final VoidCallback onClick;
  final Color color;
  const NavIcons({
    Key? key,
    required this.text,
    required this.icon,
    required this.onClick,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // get scale of device
    double scale = DeviceSettings.textScaleFactor(context);

    // return NavIcons widget
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          height: scale * 28,
          child: IconButton(
            onPressed: onClick,
            padding: const EdgeInsets.all(0),
            splashRadius: scale * 18,
            splashColor: CustomColors.splashColor,
            hoverColor: CustomColors.splashColor,
            focusColor: CustomColors.splashColor,
            highlightColor: CustomColors.splashColor,
            iconSize: 12,
            enableFeedback: false,
            icon: Icon(
              icon,
              size: scale * 23,
              color: color,
            ),
          ),
        ),
        Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: scale * 10,
            color: color,
          ),
        ),
      ],
    );
  }
}
