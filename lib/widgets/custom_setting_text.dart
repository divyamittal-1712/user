import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:user_app/widgets/text_widget.dart';

import '../utils/app_colors.dart';


class ListTileText extends StatelessWidget {
  final Function() onTap;
  final Color? color, textColor;
  final String? title;
  List<Widget>? actions;
  final IconData leading;

  ListTileText({super.key,
    this.color,
    required this.leading,
    this.title,
    required this.onTap,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(leading,color: AppColor.darkGreyColor,size: 20,),
      title: NormalText(
        text: title ?? '',
        size: 18,
        fontWeight: FontWeight.w400,
        color: textColor ?? AppColor.appBlack,
      ),
      trailing: Icon(Icons.arrow_forward_ios_rounded,color: AppColor.darkGreyColor,size: 14,),
      onTap: onTap,

    );
  }

}