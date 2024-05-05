
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import '../screens/drawer/provider/drawer_provider.dart';
import '../screens/home/bottom_navigation/appointment/provider/appointment_provider.dart';
import '../screens/home/bottom_navigation/consultant/provider/consultant_provider.dart';
import '../screens/home/bottom_navigation/home_page/provider/homepage_provider.dart';
import '../screens/home/bottom_navigation/setting_page/provider/setting_provider.dart';
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

    ];
    return independentServices;
  }

}
