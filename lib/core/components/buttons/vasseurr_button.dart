// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:getx_starter/core/constants/colors.dart';

class VasseurrBttn extends StatelessWidget {
  String buttonText;
  double? buttonHeight;
  double? buttonWidth;
  double? borderRadius;
  Color? buttonColor;
  Color? borderColor;
  Color? textColor;
  Color? buttonSplashColor;
  Function() onPressed;

  VasseurrBttn(
      {Key? key,
      required this.buttonText,
      this.buttonHeight,
      this.buttonWidth,
      this.borderRadius,
      this.buttonColor,
      this.borderColor,
      this.textColor,
      this.buttonSplashColor,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: RoundedRectangleBorder(
        side: BorderSide(color: borderColor ?? Colors.white),
        borderRadius: BorderRadius.circular(borderRadius ?? 20),
      ),
      onPressed: onPressed,
      constraints:
          BoxConstraints.tight(Size(buttonWidth ?? 250, buttonHeight ?? 50)),
      elevation: 10,
      fillColor: buttonColor ?? MyColors.mainButtonColor,
      splashColor: buttonSplashColor ?? Colors.white,
      child: Text(
        buttonText,
        style: Theme.of(context)
            .textTheme
            .apply(bodyColor: textColor ?? Colors.white)
            .titleLarge,
      ),
    );
  }
}
