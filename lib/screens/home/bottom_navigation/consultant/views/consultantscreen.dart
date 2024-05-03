import 'package:flutter/material.dart';
import 'package:user_app/screens/home/bottom_navigation/consultant/views/consultant_tab_bar.dart';

import 'consultant_list.dart';

class ConsultantScreen extends StatelessWidget {
  const ConsultantScreen({super.key});
  static const String routeName = '/consultantPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarPage(),
    );
  }
}
