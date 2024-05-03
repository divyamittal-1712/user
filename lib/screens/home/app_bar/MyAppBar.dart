import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget> actions;
  final Widget backButton;

  MyAppBar({required this.title, required this.actions, required this.backButton});

  @override
  Widget build(BuildContext context) {
    return /*AppBar(
      title: Text(title),
      actions: actions,
    );*/

      AppBar(
        backgroundColor: Colors.white,
        title: Text(title,style: TextStyle(fontSize: 18,color: AppColor.appBlack),),
        leading: backButton,
        actions: actions,
      );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}