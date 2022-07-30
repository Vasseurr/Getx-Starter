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
  Function() onpressed;

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
      required this.onpressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: RoundedRectangleBorder(
        side: BorderSide(color: borderColor ?? Colors.white),
        borderRadius: BorderRadius.circular(borderRadius ?? 20),
      ),
      onPressed: onpressed,
      constraints:
          BoxConstraints.tight(Size(buttonWidth ?? 250, buttonHeight ?? 50)),
      child: Text(
        buttonText,
        style: Theme.of(context)
            .textTheme
            .apply(bodyColor: textColor ?? Colors.white)
            .headline6,
      ),
      elevation: 10,
      fillColor: buttonColor ?? MyColors.mainButtonColor,
      splashColor: buttonSplashColor ?? Colors.white,
    );
  }
}
