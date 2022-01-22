import 'package:flutter/material.dart';
import 'package:routineme/devicesettings/devicesettings.dart';
import 'package:routineme/themes/customcolors.dart';

class NavIcons extends StatelessWidget {
  final String? text;
  final Color? color;
  final Color? bgColor;
  final bool active;
  final Map iconObject = const {
    'Home': {'default': Icons.home_outlined, 'active': Icons.home_filled},
    'Routine': {'default': Icons.access_time_outlined, 'active': Icons.access_time_filled},
    'Todo': {'default': Icons.task_outlined, 'active': Icons.task_rounded},
    'Me': {'default': Icons.account_box_outlined, 'active': Icons.account_box},
    'Add': {'default': Icons.add, 'active': Icons.add},
  };
  final VoidCallback? setActive;
  const NavIcons(
      {Key? key,
      this.text,
      this.color,
      this.bgColor,
      required this.active,
      this.setActive})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double scale = DeviceSettings.textScaleFactor(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          height: scale * 28,
          child: IconButton(
            onPressed: setActive ?? () {},
            padding: const EdgeInsets.all(0),
            splashRadius: scale * 18,
            splashColor: CustomColors.splashColor,
            hoverColor: CustomColors.splashColor,
            focusColor: CustomColors.splashColor,
            highlightColor: CustomColors.splashColor,
            iconSize: 12,
            enableFeedback: false,
            icon: Icon(
              (active) ? iconObject[text]['active'] : iconObject[text!=null ? text: 'Add']['default'],
              size: scale * 23,
              color: color ?? (active ? CustomColors.primary2 :CustomColors.mattBlack),
            ),
          ),
        ),
        if (text != null)
          Text(
            text as String,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: scale * 10, color: active ? CustomColors.primary2 :CustomColors.mattBlack),
          )
      ],
    );
  }
}
