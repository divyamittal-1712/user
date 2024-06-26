
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:user_app/screens/edit_profile/provider/edit_profile_provider.dart';
import 'package:user_app/screens/help/provider/faq_provider.dart';
import 'package:user_app/screens/home/bottom_navigation/appointment/provider/appointment_book_provider.dart';
import 'package:user_app/screens/home/bottom_navigation/appointment/provider/book_appointment_detail_provider.dart';
import 'package:user_app/screens/home/bottom_navigation/appointment/provider/reshedule_appointment_provider.dart';
import 'package:user_app/screens/home/bottom_navigation/appointment/provider/reshedule_appointment_detail_provider.dart';
import 'package:user_app/screens/home/bottom_navigation/consultant/provider/consultant_review_all_provider.dart';
import 'package:user_app/screens/notification/provider/notification_provider.dart';
import '../screens/drawer/provider/drawer_provider.dart';
import '../screens/help/provider/help_provider.dart';
import '../screens/home/bottom_navigation/appointment/provider/appointment__detail_provider.dart';
import '../screens/home/bottom_navigation/appointment/provider/appointment_provider.dart';
import '../screens/home/bottom_navigation/consultant/provider/consultant_detail_provider.dart';
import '../screens/home/bottom_navigation/consultant/provider/consultant_provider.dart';
import '../screens/home/bottom_navigation/home_page/provider/homepage_provider.dart';
import '../screens/home/bottom_navigation/setting_page/provider/setting_provider.dart';
import '../screens/home/bottom_navigation/setting_page/provider/write_review_provider.dart';
import '../screens/home/bottom_navigation/wallet_page/provider/wallet_provider.dart';
import '../screens/home/provider/provider.dart';
import '../screens/login/controller/otp_controller.dart';
import '../screens/login/controller/phone_controller.dart';
import '../screens/splash/controller/splash_controller.dart';

class ProviderHandler {
  List<SingleChildWidget> providersList() {
    List<SingleChildWidget> independentServices = [
      ListenableProvider<SplashProvider>(create: (_) => SplashProvider()),
      ListenableProvider<HomeProvider>(create: (_) => HomeProvider()),
      ListenableProvider<HomePageProvider>(create: (_) => HomePageProvider()),
      ListenableProvider<PhoneProvider>(create: (_) => PhoneProvider()),
      ListenableProvider<OTPProvider>(create: (_) => OTPProvider()),
      ListenableProvider<SettingProvider>(create: (_) => SettingProvider()),
      ListenableProvider<WalletProvider>(create: (_) => WalletProvider()),
      ListenableProvider<AppointmentProvider>(create: (_) => AppointmentProvider()),
      ListenableProvider<ConsultantProvider>(create: (_) => ConsultantProvider()),
      ListenableProvider<DrawerProvider>(create: (_) => DrawerProvider()),
      ListenableProvider<HelpProvider>(create: (_) => HelpProvider()),
      ListenableProvider<EditProfileProvider>(create: (_) => EditProfileProvider()),
      ListenableProvider<NotificationProvider>(create: (_) => NotificationProvider()),
      ListenableProvider<FAQProvider>(create: (_) => FAQProvider()),
      ListenableProvider<ConsultantDetailProvider>(create: (_) => ConsultantDetailProvider()),
      ListenableProvider<AppointmentDetailProvider>(create: (_) => AppointmentDetailProvider()),
      ListenableProvider<RescheduleAppointmentProvider>(create: (_) => RescheduleAppointmentProvider()),
      ListenableProvider<RescheduleAppointmentDetailProvider>(create: (_) => RescheduleAppointmentDetailProvider()),
      ListenableProvider<ReviewAllProvider>(create: (_) => ReviewAllProvider()),
      ListenableProvider<BookAppointmentProvider>(create: (_) => BookAppointmentProvider()),
      ListenableProvider<BookAppointmentDetailProvider>(create: (_) => BookAppointmentDetailProvider()),
      ListenableProvider<WriteReviewProvider>(create: (_) => WriteReviewProvider()),

    ];
    return independentServices;
  }

}
