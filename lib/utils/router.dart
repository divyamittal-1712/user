import 'package:flutter/material.dart';
import 'package:user_app/screens/edit_profile/views/editProfileScreen.dart';
import 'package:user_app/screens/help/views/faqscreen.dart';
import 'package:user_app/screens/home/bottom_navigation/appointment/views/book_appointment_page.dart';
import 'package:user_app/screens/home/bottom_navigation/appointment/views/appointment_detail_page.dart';
import 'package:user_app/screens/home/bottom_navigation/appointment/views/book_appointment_detail_page.dart';
import 'package:user_app/screens/home/bottom_navigation/appointment/views/reschedule_appointment_detail_page.dart';
import 'package:user_app/screens/home/bottom_navigation/appointment/views/reschedule_appointment_page.dart';
import 'package:user_app/screens/home/bottom_navigation/consultant/views/consultant_detail_page.dart';
import 'package:user_app/screens/home/bottom_navigation/consultant/views/consultant_review_all_page.dart';
import 'package:user_app/screens/home/bottom_navigation/consultant/views/consultantscreen.dart';
import 'package:user_app/screens/home/bottom_navigation/setting_page/view/write_review_page.dart';
import 'package:user_app/screens/notification/views/notificationscreen.dart';

import '../screens/drawer/views/drawer.dart';
import '../screens/help/views/helpscreen.dart';
import '../screens/home/bottom_navigation/appointment/views/appointmentscreen.dart';
import '../screens/home/bottom_navigation/home_page/homepage_screen.dart';
import '../screens/home/bottom_navigation/setting_page/view/setting_screen.dart';
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
    case HomePage.routeName:
      routeView = const HomePage();
      break;
    case DrawerPage.routeName:
      routeView = const DrawerPage();
      break;
    case HelpPage.routeName:
      routeView = const HelpPage();
      break;
    case EditProfilePage.routeName:
      routeView = EditProfilePage();
      break;
    case NotificationPage.routeName:
      routeView = const NotificationPage();
      break;
    case FAQPage.routeName:
      routeView = const FAQPage();
      break;
    case ConsultantDetailPage.routeName:
      routeView = const ConsultantDetailPage();
      break;
    case AppointmentDetailPage.routeName:
      routeView = const AppointmentDetailPage();
      break;
    case RescheduleAppointmentPage.routeName:
      routeView = RescheduleAppointmentPage();
      break;
    case RescheduleAppointmentDetailPage.routeName:
      routeView = RescheduleAppointmentDetailPage();
      break;
    case ReviewAllScreen.routeName:
      routeView = ReviewAllScreen();
      break;
    case BookAppointmentPage.routeName:
      routeView = BookAppointmentPage();
      break;
    case BookAppointmentDetailPage.routeName:
      routeView = BookAppointmentDetailPage();
      break;
    case WriteReviewScreen.routeName:
      routeView = WriteReviewScreen();
      break;

    default:
      routeView = Scaffold(
          body: Center(child: Text("Page not fount ${settings.name ?? ''}")));
  }

  final MaterialPageRoute<dynamic> route = MaterialPageRoute<dynamic>(
      settings: settings, builder: (BuildContext context) => routeView);
  return route;
}
