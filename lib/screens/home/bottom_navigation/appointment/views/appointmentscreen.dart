import 'package:flutter/material.dart';
import 'package:user_app/screens/home/bottom_navigation/appointment/views/appointement_list_view.dart';

import 'appointment_tab_bar.dart';

class AppointmentPage extends StatelessWidget {
  const AppointmentPage({super.key});
  static const String routeName = '/appointmentPage';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black26,
      body: AppointmentTabBar(),
    );
  }
}
