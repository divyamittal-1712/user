import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../utils/app_colors.dart';
import '../utils/size_config.dart';

class CustomOutlinedButton extends StatelessWidget {
  VoidCallback onPressed;
  String title;
  IconData ?icon;

  CustomOutlinedButton({Key? key, required this.onPressed, required this.title,required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: AppColor.whiteColor,
      height: 56,
      minWidth: SizeConfig.width * 90,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      onPressed: onPressed,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.black,
            size: 30,
          ),
          const SizedBox(width:8),
          Text(
            title,
            style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontFamily: "FuturaPT",
                fontSize:22+5),
          ),
        ],
      ),
    );
  }
}
