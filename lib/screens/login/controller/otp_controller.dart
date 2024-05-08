import 'package:flutter/cupertino.dart';
import 'package:user_app/screens/login/views/phone.dart';

import '../../home/home.dart';

class OTPProvider extends ChangeNotifier{

  homeTap(BuildContext context){
    Navigator.of(context).pushNamedAndRemoveUntil(HomeScreen.routeName, (route) => false);
  }
  phoneTap(BuildContext context){
    Navigator.of(context).pushNamedAndRemoveUntil(PhoneScreen.routeName, (route) => false);
  }
}