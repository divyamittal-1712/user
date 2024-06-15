import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:user_app/widgets/text_widget.dart';

import '../utils/app_colors.dart';


class WalletTileText extends StatelessWidget {
  final Function() onTap;
  final Color? color, textColor;
  final String? title;
  final String? subTitle;
  List<Widget>? actions;
  final IconData leading;
  FontWeight? fontWeight;
  double? fontSize;

  WalletTileText({super.key,
    this.color,
    required this.leading,
    this.title,
    this.subTitle,
    required this.onTap,
    this.textColor,
    this.fontWeight,
    this.fontSize
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(leading,color: AppColor.darkGreyColor,size: 20,),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          NormalText(
            text: title ?? '',
            size: fontSize ?? 13,
            fontWeight: fontWeight ?? FontWeight.w500,
            color: textColor ?? AppColor.blackColor,
          ),
          SmallText(
            text: subTitle ?? '',
            size: fontSize ?? 12,
            fontWeight: fontWeight ?? FontWeight.w400,
            color: textColor ?? AppColor.blackColor,
          ),
        ],
      ),
      trailing: Icon(Icons.arrow_forward_ios_rounded,color: AppColor.quickSliverColor,size: 16,),
      onTap: onTap,

    );
  }

}