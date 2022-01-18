import 'package:flutter/material.dart';
import 'package:routineme/devicesettings/devicesettings.dart';

class NavIcons extends StatelessWidget {
  final IconData iconData;
  final String? text;
  final Color? color;
  final Color? bgColor;
  final bool? active;
  const NavIcons(
      {Key? key,
      required this.iconData,
      this.text,
      this.color,
      this.bgColor,
      this.active})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Icon(
          iconData,
          size: DeviceSettings.textScaleFactor(context) * 23,
          color: color,
        ),
        if (text != null)
          Text(
            text as String,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: DeviceSettings.textScaleFactor(context) * 10),
          )
      ],
    );
  }
}
