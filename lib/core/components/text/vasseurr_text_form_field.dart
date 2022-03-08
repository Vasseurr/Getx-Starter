import 'package:flutter/material.dart';

class VasseurrTextFormField extends StatelessWidget {
  double? width;
  double? height;
  TextInputAction? textInputAction;
  TextInputType? textInputType;
  Color? cursorColor;
  Icon? icon;
  String? hintText;
  String? labelText;
  int? maxLength;
  int? maxLines;
  TextEditingController? textEditingController;
  Function(String)? onChanged;
  Function(String? value)? onSaved;
  String? Function(String? value)? validator;

  VasseurrTextFormField(
      {Key? key,
      this.height,
      this.width,
      this.textInputAction,
      this.textInputType,
      this.textEditingController,
      this.cursorColor,
      this.hintText,
      this.labelText,
      this.onChanged,
      this.onSaved,
      this.validator,
      this.maxLength,
      this.maxLines,
      this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 350,
      height: height ?? 50,
      child: TextFormField(
        maxLines: maxLines,
        maxLength: maxLength,
         controller: textEditingController,
      onChanged: onChanged,
        textInputAction: textInputAction ?? TextInputAction.next,
        keyboardType: textInputType ?? TextInputType.number,
        cursorColor: cursorColor ?? Colors.orangeAccent.shade400,
        decoration: InputDecoration(
          suffixIcon: icon,
          hintText: hintText,
          labelStyle: TextStyle(
            color: Colors.grey.shade700,
            fontFamily: "Poppins",
            fontWeight: FontWeight.w700,
          ),
          contentPadding: const EdgeInsets.all(8.0),
          hintStyle: Theme.of(context).textTheme.caption?.copyWith(
              fontSize: 15, fontWeight: FontWeight.w600, color: Colors.grey),
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
