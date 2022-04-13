import 'package:flutter/material.dart';
import 'package:routineme/themes/customcolors.dart';

const twoPI = 2 * 3.14159;
const piBy2 = 3.14159 / 2;

class TimerView extends StatelessWidget {
  final double value;
  final double radius;
  const TimerView({Key? key, required this.value, required this.radius}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Transform.rotate(
          angle: -piBy2,
          child: ShaderMask(
            shaderCallback: (rect) {
              return SweepGradient(
                colors: [
                  CustomColors.accent1,
                  CustomColors.prussianBlue,
                  CustomColors.offWhite,
                ],
                stops: [value, value + 0.1, value],
                startAngle: 0,
                endAngle: twoPI,
                center: Alignment.center,
              ).createShader(rect);
            },
            child: Container(
              width: radius,
              height: radius,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: CustomColors.white,
              ),
            ),
          ),
        ),
        Container(
          width: radius - 30,
          height: radius - 30,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: CustomColors.bg1,
          ),
          child: Text((value * 100).ceil().toString() + "%") ,
        ),
      ],
    );
  }
}

class TimerAnimatedView extends StatelessWidget {

  final double radius;
  const TimerAnimatedView({Key? key, required this.radius}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween(begin: 0.0, end: 1.0),
      duration: const Duration(milliseconds: 1000),
      child: TimerView(
        value: 0,
        radius: radius,
      ),
      builder: (context, value, child) {
        return TimerView(
          value: value as double,
          radius: radius,
        );
      },
    );
  }
}
