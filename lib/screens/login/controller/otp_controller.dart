import 'package:flutter/cupertino.dart';

import '../../home/home.dart';

class OTPProvider extends ChangeNotifier{

  homeTap(BuildContext context){
    Navigator.of(context).pushNamedAndRemoveUntil(HomeScreen.routeName, (route) => false);
  }
}