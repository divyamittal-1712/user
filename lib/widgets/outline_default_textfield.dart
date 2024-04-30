import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../utils/app_colors.dart';


class OutlineDefaultTextField extends StatelessWidget {
  const OutlineDefaultTextField(
      {Key? key,
      this.cntrlr,
      this.fontSize,
      this.keyboardType,
      this.maxLength,
      this.error,
      this.color,
      this.hintColor,
      this.hint,
      this.txtColor,
      this.enable,
      this.focus,
      required this.obscure,
        this.onChanged,
      this.labelText})
      : super(key: key);

  final Color? color, hintColor, txtColor;
  final String? hint, labelText, error;
  final int? maxLength;
  final double? fontSize;
  final TextEditingController? cntrlr;
  final bool? enable;
  final FocusNode? focus;
  final bool obscure;
  final TextInputType? keyboardType;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.appBlack,
      child: TextField(
        focusNode: focus,
        enabled: enable,
        maxLength: maxLength,
        controller: cntrlr,
        textAlign: TextAlign.left,
        keyboardType: keyboardType,
        textDirection: TextDirection.ltr,
        decoration: InputDecoration(
          labelText: labelText,
          errorText: error,
          labelStyle: TextStyle(
            color: hintColor,
              fontFamily: 'D-DIN'
          ),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0),
              borderSide: BorderSide(color: AppColor.appBlack)),
          contentPadding: const EdgeInsets.all(20.0),
          hintText: hint,
          hintStyle: TextStyle(fontSize: fontSize, color: hintColor, fontFamily: 'D-DIN'),
        ),
        onChanged: onChanged,
        obscureText: obscure,
        style: TextStyle(fontSize: fontSize, color: txtColor, fontFamily: 'D-DIN'),
      ),
    );
  }
}
