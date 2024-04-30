
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:user_app/utils/app_colors.dart';
import '../utils/size_config.dart';

class CustomButton extends StatelessWidget {
  VoidCallback onPressed;
  String title;
  Color? color;


  CustomButton({Key? key, required this.onPressed, required this.title,this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: color??AppColor.appYellow,
      height: 50,
      minWidth: SizeConfig.width * 100,
      splashColor: AppColor.accentColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      onPressed: onPressed,
      child: Text(
        title,
        style:  TextStyle(
            color: AppColor.appBlack, fontWeight: FontWeight.w600, fontSize: 20),
      ),
    );
  }
}
