import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final List<Widget> actions;
  final Widget leading;

  MyAppBar({this.title, required this.actions, required this.leading});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 16.0,
      backgroundColor: AppColor.whiteColor,
      shadowColor: AppColor.lightGray.withOpacity(0.4),
      title: Text(title ?? "",style: TextStyle(fontSize: 18,color: AppColor.appBlack)),

      leading: leading,
        actions: actions,
      );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}