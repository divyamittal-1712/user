
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommonOutlinedButton extends StatelessWidget {
  VoidCallback onPressed;
  String title;
  String subTitle;
  String? icon;
  String? iconEnd;
  Color? color;

  CommonOutlinedButton(
      {Key? key,
      required this.onPressed,
      required this.title,
      required this.subTitle,
      required this.icon,
      required this.iconEnd,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 70,
      padding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        side: BorderSide(width: 1,
        color: color! ),
        borderRadius: BorderRadius.circular(40),
      ),
      onPressed: onPressed,
      child:  Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
            const SizedBox(width: 25),
          Image.asset(
            icon!,
            height: 36,
            width: 36,
          ),
          const SizedBox(width: 25),
          Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      color: Colors.black, fontWeight: FontWeight.normal,fontFamily: "FuturaPT", fontSize: 13+5),
                ),
                Text(
                  subTitle,
                  style: const TextStyle(
                    height: 1,
                      color: Colors.black, fontWeight: FontWeight.w600,fontFamily: "FuturaPT", fontSize: 19+5),
                )
              ],
            ),
          ],),
          Image.asset(
            iconEnd!,
            height: 70,
            width: 90,
            fit: BoxFit.fill,
          ),
        ],
      ),
    );
  }
}
