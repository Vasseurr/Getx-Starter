// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'dart:math' as math;

class DiamondButton extends StatelessWidget {
  Color buttonColor, splashColor;
  Icon? icon;
  Function() onPressed;
  DiamondButton(
      {Key? key,
      required this.buttonColor,
      this.splashColor = Colors.blueAccent,
      this.icon,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Transform(
        alignment: Alignment.center,
        transform: Matrix4.rotationZ(
          math.pi / 4,
        ),
        child: Container(
          width: 80,
          height: 80,
          color: buttonColor,
          child: InkWell(
            splashColor: splashColor,
            onTap: onPressed,
            child: Center(
              child: Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.rotationZ(
                    -math.pi / 4,
                  ),
                  child: icon ?? const SizedBox()),
            ),
          ),
        ),
      ),
    );
  }
}
