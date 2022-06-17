import 'package:flutter/material.dart';

class VasseurrTFF extends StatelessWidget {
  double? width;
  double? height;
  TextInputAction? textInputAction;
  TextInputType? textInputType;
  Color? cursorColor;
  Color? labelTextColor;
  Color? hintTextColor;
  Icon? prefixIcon;
  Icon? suffixIcon;
  String? hintText;
  String? labelText;
  String? helperText;
  FocusNode? focusNode;
  int? maxLength;
  int? maxLines;
  double? radius;
  bool? filled;
  bool? autoFocus;
  bool? obscureText;
  TextEditingController? textEditingController;
  Function(String)? onChanged;
  Function(String? value)? onSaved;
  String? Function(String? value)? validator;

  VasseurrTFF(
      {Key? key,
      this.height,
      this.width,
      this.textInputAction,
      this.textInputType,
      this.textEditingController,
      this.cursorColor,
      this.labelTextColor,
      this.hintTextColor,
      this.hintText,
      this.helperText,
      this.labelText,
      this.onChanged,
      this.onSaved,
      this.validator,
      this.maxLength,
      this.maxLines,
      this.radius,
      this.focusNode,
      this.filled,
      this.autoFocus,
      this.obscureText,
      this.prefixIcon,
      this.suffixIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 350,
      height: height ?? 50,
      child: TextFormField(
        maxLines: maxLines ?? 1,
        maxLength: maxLength,
        controller: textEditingController,
        focusNode: focusNode,
        autofocus: autoFocus ?? false,
        onChanged: onChanged,
        obscureText: obscureText ?? false,
        textInputAction: textInputAction ?? TextInputAction.next,
        keyboardType: textInputType ?? TextInputType.text,
        cursorColor: cursorColor ?? Colors.orangeAccent.shade400,
        decoration: InputDecoration(
          helperText: helperText,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          fillColor: const Color.fromRGBO(245, 245, 245, 1),
          filled: filled ?? false,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radius ?? 10),
            borderSide: BorderSide(color: Colors.grey.shade200, width: 1.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radius ?? 10),
            borderSide: BorderSide(color: Colors.grey.shade200, width: 1.0),
          ),
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          hintText: hintText,
          labelStyle: TextStyle(
            color: labelTextColor ?? Colors.grey.shade700,
            fontFamily: "Poppins",
            fontWeight: FontWeight.w700,
          ),
          hintStyle: Theme.of(context).textTheme.caption?.copyWith(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: hintTextColor ?? Colors.grey),
          labelText: labelText,
        ),
        style: const TextStyle(
            color: Colors.black,
            fontFamily: "Poppins",
            fontWeight: FontWeight.w500),
        onSaved: onSaved,
        validator: validator,
      ),
    );
  }
}
