import 'package:flutter/material.dart';
import '../utils/app_colors.dart';
import '../utils/font_family.dart';

class NormalText extends StatelessWidget {
  double? size, lineHeight;
  int? maxLine;
  TextOverflow? textOverflow;
  bool? softWarp;
  Color? color;
  TextAlign? textAlign;
  FontWeight? fontWeight;
  String? fontFamily;
  String text;
  TextDecoration? textDecoration;
  NormalText({
    this.size,
    this.maxLine,
    this.lineHeight,
    this.textDecoration,
    this.textOverflow,
    this.softWarp,
    this.textAlign,
    this.color,
    this.fontWeight,
    this.fontFamily,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign ?? TextAlign.start,
      maxLines: maxLine,
      softWrap: softWarp,
      overflow: textOverflow,
      style: TextStyle(
        height: lineHeight??1.3,
          decoration: textDecoration,
          color: color ?? Colors.black,
          fontWeight: fontWeight ?? FontWeight.w400,
          fontFamily: fontFamily ?? FontFamily.Manrope,
          fontSize: size ?? 16+5),
    );
  }
}

class BigText extends StatelessWidget {
  double? size, lineHeight;
  int? maxLine;
  TextOverflow? textOverflow;
  bool? softWarp;
  Color? color;
  TextAlign? textAlign;
  FontWeight? fontWeight;
  String text;

  BigText({
    this.size,
    this.maxLine,
    this.lineHeight,
    this.textOverflow,
    this.softWarp,
    this.textAlign,
    this.color,
    this.fontWeight,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign ?? TextAlign.start,
      maxLines: maxLine,
      softWrap: softWarp,
      overflow: textOverflow,
      style: TextStyle(
        height: lineHeight??1.3,
          color: color ?? Colors.black,
          fontFamily: FontFamily.Manrope,
          fontWeight: fontWeight ?? FontWeight.w600,
          fontSize: size ?? 22+5),
    );
  }
}

class SmallText extends StatelessWidget {
  double? size, lineHeight;
  int? maxLine;
  TextOverflow? textOverflow;
  bool? softWarp;
  Color? color;
  TextDecoration? textDecoration;
  TextAlign? textAlign;
  FontWeight? fontWeight;
  String? fontFamily;
  String text;

  SmallText({
    this.size,
    this.maxLine,
    this.lineHeight,
    this.textDecoration,
    this.textOverflow,
    this.softWarp,
    this.textAlign,
    this.color,
    this.fontWeight,
    this.fontFamily,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign ?? TextAlign.start,
      maxLines: maxLine,
      softWrap: softWarp,
      overflow: textOverflow,
      style: TextStyle(
        height: lineHeight??1.3,
          decoration: textDecoration,
          color: color ?? Colors.grey,
          fontFamily: fontFamily ?? FontFamily.Manrope,
          fontWeight: fontWeight ?? FontWeight.w400,
          fontSize: size ?? 12),
    );
  }
}

class SettingText extends StatelessWidget {
  double? size, lineHeight;
  int? maxLine;
  TextOverflow? textOverflow;
  bool? softWarp;
  Color? color;
  TextAlign? textAlign;
  FontWeight? fontWeight;
  String text;
  TextDecoration? textDecoration;
  SettingText({
    this.size,
    this.maxLine,


    this.lineHeight,
    this.textDecoration,
    this.textOverflow,
    this.softWarp,
    this.textAlign,
    this.color,
    this.fontWeight,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign ?? TextAlign.start,
      maxLines: maxLine,

      softWrap: softWarp,
      overflow: textOverflow,
      style: TextStyle(
          height: lineHeight??1.3,
          decoration: textDecoration,
          color: color ?? AppColor.tileTextColor,
          fontWeight: fontWeight ?? FontWeight.w400,
          fontSize: size ?? 24+5),
    );
  }
}
