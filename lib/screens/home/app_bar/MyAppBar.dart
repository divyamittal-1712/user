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
      backgroundColor: Colors.white,
      title: Text(title ?? "",style: TextStyle(fontSize: 18,color: AppColor.appBlack)),
        leading: leading,
        actions: actions,
      );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}