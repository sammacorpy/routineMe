import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:routineme/components/interface/appicons.dart';
import 'package:routineme/components/namedicons.dart';
import 'package:routineme/devicesettings/devicesettings.dart';
import 'package:routineme/themes/customcolors.dart';

class AddIcon extends AppIcons {
  const AddIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double scale = DeviceSettings.textScaleFactor(context);
    double vh = DeviceSettings.deviceHeight(context);
    return Container(
      decoration: BoxDecoration(
        color: CustomColors.accent2,
        borderRadius: const BorderRadius.all(Radius.circular(100)),
        border: Border.all(width: 1, color: CustomColors.accent2),
      ),
      width: vh * 0.07,
      height: vh * 0.07,
      padding: const EdgeInsets.all(2),
      alignment: Alignment.center,
      child: SizedBox(
        width: scale * 30,
        height: scale * 30,
        child: IconButton(
          onPressed: () => 1,
          padding: const EdgeInsets.all(0),
          splashRadius: scale * 18,
          splashColor: CustomColors.splashColor,
          hoverColor: CustomColors.splashColor,
          focusColor: CustomColors.splashColor,
          highlightColor: CustomColors.splashColor,
          iconSize: 15,
          enableFeedback: false,
          icon: Icon(
            NamedIcons.getIcon("Add", true),
            size: scale * 30,
            color: CustomColors.white,
          ),
        ),
      ),
    );
  }
}
