import 'package:flutter/cupertino.dart';
import 'package:user_app/screens/home/bottom_navigation/consultant/views/consultantscreen.dart';

import '../bottom_navigation/appointment/views/appointmentscreen.dart';
import '../bottom_navigation/home_page/homepage_screen.dart';
import '../bottom_navigation/setting_page/view/setting_screen.dart';
import '../bottom_navigation/wallet_page/wallet_screen.dart';

class HomeProvider extends ChangeNotifier{
  int navIndex = 0;
  navIndextChange(int value){
    navIndex = value;
    print('nav index --> $navIndex');
    notifyListeners();
  }

  Widget pageManage(int value){
    switch(value){
      case 0:
        return HomePage();
      case 1:
        return ConsultantScreen();
      case 2:
        return AppointmentPage();
      case 3:
        return SettingPage();
      default:
        return HomePage();
    }
  }

}