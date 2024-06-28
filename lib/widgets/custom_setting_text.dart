import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:user_app/utils/font_family.dart';
import 'package:user_app/widgets/text_widget.dart';

import '../utils/app_colors.dart';


class ListTileText extends StatelessWidget {
  final Function() onTap;
  final Color? color, textColor;
  final String? title;
  List<Widget>? actions;
  final String leading;


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
      visualDensity: VisualDensity(horizontal: 0, vertical: -4),
      leading: SvgPicture.asset(leading),
      title: NormalText(
        text: title ?? '',
        size: 14,
        fontWeight: FontWeight.w400,
        color: textColor ?? AppColor.outerSpaceColor,
        fontFamily: FontFamily.Manrope,
      ),
      trailing: Icon(Icons.arrow_forward_ios_rounded,color: AppColor.smokyBlackColor,size: 14,),
      onTap: onTap,

    );
  }

}