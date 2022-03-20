import 'package:flutter/material.dart';
import 'package:routineme/components/interface/icons.dart';
import 'package:routineme/devicesettings/devicesettings.dart';
import 'package:routineme/themes/customcolors.dart';

class FloatingIcon extends AppIcons{
  final Color color;
  final IconData icon;
  final VoidCallback? onClick;
  const FloatingIcon(
      {Key? key,
      required this.color,
      required this.icon,
      required this.onClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double scale = DeviceSettings.textScaleFactor(context);
    double vw = DeviceSettings.deviceWidth(context);
    double vh = DeviceSettings.deviceHeight(context);
    return Container(
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
          Column(
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
            ],
          )
        ],
      ),
    );
  }
}
