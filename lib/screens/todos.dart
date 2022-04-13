import 'package:flutter/material.dart';
import 'package:routineme/components/timeranimatedview.dart';
import 'package:routineme/devicesettings/devicesettings.dart';

class TodoScreen extends StatelessWidget {
  const TodoScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double size = DeviceSettings.deviceWidth(context);
    return Column(
      children: [
        Center(
          child: Container(
            height: size * 0.5,
            width: size * 0.5,
            color: Colors.transparent,
            child: TimerAnimatedView(
              radius: size * 0.5,
            ),
          ),
        ),
      ],
    );
  }
}
