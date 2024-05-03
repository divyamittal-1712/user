import 'package:flutter/material.dart';
import 'package:user_app/screens/home/bottom_navigation/consultant/views/consultantscreen.dart';

import '../screens/home/bottom_navigation/appointment/views/appointmentscreen.dart';
import '../screens/home/bottom_navigation/setting_page/setting_screen.dart';
import '../screens/home/bottom_navigation/wallet_page/wallet_screen.dart';
import '../screens/home/home.dart';
import '../screens/login/views/OTP.dart';
import '../screens/login/views/get_started.dart';
import '../screens/login/views/phone.dart';
import '../screens/splash/views/splashscreen.dart';

// const initialRoute = SplashScreen.routeName;
// const initialRoute= LoginScreen.routeName;

String get initialRoute {
  String route;
  // final LoginModel? user = HiveHandler.getUser();
  // if (!(user?.userId?.isNullOrEmpty ?? true)) {
  //     if (user?.isCompleteProfile.toBool()??false) {
  //       route=  HomeNavScreen.routeName;
  //     } else {
  //       route =  SignUpProfile.routeName;
  //     }
  // }else {
  route = SplashScreen.routeName;
  // }
  // printf(route);
  return route;
}

Route<dynamic> generateRouteNew(RouteSettings settings) {
  Widget routeView;
  switch (settings.name) {
    case SplashScreen.routeName:
      routeView = const SplashScreen();
      break;
    case HomeScreen.routeName:
      routeView = const HomeScreen();
      break;
    case GetStartedScreen.routeName:
      routeView = const GetStartedScreen();
      break;
    case PhoneScreen.routeName:
      routeView = const PhoneScreen();
      break;
    case OTPScreen.routeName:
      routeView = const OTPScreen();
      break;
    case SettingPage.routeName:
      routeView = const SettingPage();
      break;
    case WalletPage.routeName:
      routeView = const WalletPage();
      break;
    case AppointmentPage.routeName:
      routeView = const AppointmentPage();
      break;
    case ConsultantScreen.routeName:
      routeView = const ConsultantScreen();
      break;

    default:
      routeView = Scaffold(
          body: Center(child: Text("Page not fount ${settings.name ?? ''}")));
  }

  final MaterialPageRoute<dynamic> route = MaterialPageRoute<dynamic>(
      settings: settings, builder: (BuildContext context) => routeView);
  return route;
}
