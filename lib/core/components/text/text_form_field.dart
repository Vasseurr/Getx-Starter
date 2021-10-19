import 'package:flutter/material.dart';
import 'package:getx_starter/core/constants/colors.dart';
import 'package:getx_starter/core/init/theme/light/color_scheme_light.dart';

class RuzgarTFF extends StatelessWidget {
  TextEditingController? textEditingController;
  int? maxLength;
  TextInputType? keyboardType;
  String? errorText;
  String? labelText;
  String? initialText;
  Color? textColor;
  Icon? icon;
  bool obsecureText;
  Color labelColor;
  TextInputAction? textInputAction;

  double? fontSize;
  int? maxLines;
  Function(String)? onChanged;
  Function(String? value)? onSaved;
  String? Function(String? value)? validator;

  RuzgarTFF(
      {this.textEditingController,
      this.maxLength,
      this.keyboardType,
      this.errorText,
      this.labelText,
      this.initialText,
      this.onSaved,
      this.validator,
      this.icon,
      this.fontSize,
      this.maxLines,
      this.onChanged,
      this.textInputAction,
      this.labelColor = MyColors.colorPrimary,
      this.textColor = Colors.black,
      this.obsecureText = false});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      textInputAction: textInputAction,
      obscureText: obsecureText,
      controller: textEditingController,
      onChanged: onChanged,
      initialValue: initialText,
      maxLines: maxLines,
      maxLength: maxLength,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        prefixIcon: icon,
        fillColor: Theme.of(context).colorScheme.background,
        filled: true,
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: MyColors.colorPrimary, width: 2.0),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: MyColors.colorPrimary, width: 1.0),
        ),
        errorText: errorText,
        labelStyle: TextStyle(
          color: labelColor,
          fontFamily: "Poppins",
          fontWeight: FontWeight.w400,
        ),
        labelText: labelText,
      ),
      style: TextStyle(
          color: ColorSchemeLight.instance.colorBlack,
          fontFamily: "Poppins",
          fontWeight: FontWeight.w500),
      onSaved: onSaved,
      validator: validator,
    );
  }
}
