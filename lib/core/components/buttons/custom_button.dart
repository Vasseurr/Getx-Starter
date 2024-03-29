// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final Color buttonColor;
  final Color borderColor;
  final Color textColor;
  final double radius;
  final double height;
  final double width;
  final Widget? buttonIcon;
  final VoidCallback onPressed;
  final Color color;
  final FontWeight fontWeight;
  final double fontSize;

  const CustomButton(
      {Key? key,
      required this.buttonText,
      this.buttonColor = Colors.blue,
      this.textColor = Colors.white,
      this.borderColor = Colors.blue,
      this.radius = 10,
      this.height = 40,
      this.width = 100,
      this.buttonIcon,
      required this.onPressed,
      this.color = Colors.blue,
      this.fontWeight = FontWeight.w500,
      this.fontSize = 12})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      child: SizedBox(
        height: height,
        width: width,
        child: RawMaterialButton(
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: borderColor,
            ),
            borderRadius: BorderRadius.circular(radius),
          ),
          fillColor: buttonColor,
          onPressed: onPressed,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buttonIcon != null ? Expanded(child: buttonIcon!) : SizedBox(),
              Expanded(
                child: Center(
                  child: Text(
                    buttonText,
                    style: TextStyle(
                        fontSize: fontSize,
                        color: textColor,
                        fontWeight: fontWeight),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
