import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class SettingProvider extends ChangeNotifier{
  var isPrivatAccount = true;

  setSwitchPrivateAccount(bool value) {
    isPrivatAccount = value;
    notifyListeners();
  }
}