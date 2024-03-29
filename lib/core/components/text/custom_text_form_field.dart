// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import '../../constants/colors.dart';

class CustomTFF extends StatelessWidget {
  TextEditingController? textEditingController;
  int? maxLength;
  TextInputType? keyboardType;
  String? errorText;
  String? labelText;
  String? initialText;
  String? hintText;
  Color? textColor;
  Color? fillColor;
  Color hintColor;
  Color borderColor;
  Icon? icon;
  bool obscureText;
  Color labelColor;
  TextInputAction? textInputAction;

  double? fontSize;
  double borderWidth;
  int maxLines;
  double radius;
  Function(String)? onChanged;
  Function(String? value)? onSaved;
  String? Function(String? value)? validator;

  CustomTFF(
      {Key? key,
      this.textEditingController,
      this.maxLength,
      this.keyboardType,
      this.errorText,
      this.labelText,
      this.initialText,
      this.hintText,
      this.onSaved,
      this.validator,
      this.icon,
      this.fontSize,
      this.radius = 10,
      this.maxLines = 1,
      this.onChanged,
      this.textInputAction,
      this.borderWidth = 2.0,
      this.labelColor = MyColors.colorPrimary,
      this.fillColor,
      this.textColor = Colors.black,
      this.hintColor = Colors.white,
      this.borderColor = MyColors.colorPrimary,
      this.obscureText = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      textInputAction: textInputAction,
      obscureText: obscureText,
      controller: textEditingController,
      onChanged: onChanged,
      initialValue: initialText,
      maxLines: maxLines,
      maxLength: maxLength,
      keyboardType: keyboardType,
      decoration: InputDecoration(
          prefixIcon: icon,
          fillColor: fillColor ?? Theme.of(context).colorScheme.background,
          filled: true,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radius),
            borderSide: BorderSide(color: borderColor, width: borderWidth),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radius),
            borderSide: BorderSide(color: borderColor, width: borderWidth),
          ),
          errorText: errorText,
          labelStyle: TextStyle(
            color: labelColor,
            fontFamily: "Poppins",
            fontWeight: FontWeight.w400,
          ),
          labelText: labelText,
          hintText: hintText,
          hintStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
              fontSize: 15, fontWeight: FontWeight.w600, color: hintColor)),
      style: TextStyle(
          color: textColor, fontFamily: "Poppins", fontWeight: FontWeight.w500),
      onSaved: onSaved,
      validator: validator,
    );
  }
}
