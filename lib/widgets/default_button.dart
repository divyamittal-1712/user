import 'package:flutter/material.dart';
import 'package:user_app/utils/font_family.dart';
import '../utils/app_colors.dart';

class CustomButton extends StatelessWidget {
  // Variables
  final Widget child;
  final VoidCallback onPressed;
  final double? width;
  final double? height;
  final Color? color;

  const CustomButton(
      {Key? key, required this.child, required this.onPressed, this.width, this.height,this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height ?? 56,
      child: ElevatedButton(
        child: child,
        style: ButtonStyle(foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          // backgroundColor: MaterialStateProperty.all<Color>(Theme.of(context).primaryColor),
          backgroundColor: MaterialStateProperty.all<Color>(color??AppColor.buttonColor),
          shadowColor: MaterialStateProperty.all<Color>(color??AppColor.buttonColor),
          textStyle: MaterialStateProperty.all<TextStyle>(
            const TextStyle(color: Colors.white)
          ),
          shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(28),
            )
          )
        ),
        onPressed: onPressed,
      ),
    );
  }
}


class DefaultButton extends StatelessWidget {
  String text;
  double? fontSize;
  FontWeight? fontWeight;
  Color? fontColor;
  TextAlign? textAlign;
  double? fixedSizeWidth;
  Color? color;
  final VoidCallback onPressed;
  double? height;
  double? width;
  double? radius;
  String? svgasset;
  bool? loadingFlag;
  Key? key;
  OutlinedBorder? shape;

    DefaultButton(
      {
         this.key,
        required this.text,
        this.svgasset,
        this.fontSize,
        this.fontWeight,
        this.fontColor,
        this.textAlign,
        this.fixedSizeWidth,
        required this.onPressed,
        this.height,
        this.width,
        this.radius,
        this.color,
        this.loadingFlag = false,
        this.shape
      });

  @override
  Widget build(BuildContext context) {
    final fixwidth = fixedSizeWidth!=null?(MediaQuery.of(context).size.width * fixedSizeWidth!):double.nan;
    return  ElevatedButton(
        key: key,
        onPressed: loadingFlag == true ? (){} : onPressed,
        style: ElevatedButton.styleFrom(
            fixedSize: Size(width ?? fixwidth, height ?? 50),
            // fixedSize: Size(MediaQuery.of(context).size.width * fixedSizeWidth!, height ?? 48),
            backgroundColor: color ?? AppColor.appBlack,
            shape: shape ?? RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(radius ?? 4),
            )
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if(loadingFlag==true)...[
              SizedBox()
            ]else...[
              Text(
                text,
                style: TextStyle(
                  fontSize: fontSize ?? 14,
                  fontWeight: fontWeight,
                  fontFamily: FontFamily.Manrope,
                  color: fontColor ?? AppColor.whiteColor,
                ),
                textAlign: TextAlign.center,
              ),
            ]
          ],
        ));
  }
}