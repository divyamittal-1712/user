
import 'package:shared_preferences/shared_preferences.dart';

class SharedPre {

  /// User Data

  static String uId = 'uId';
  static String userProfile = 'userProfile';
  static String coverImage = 'coverImage';
  static String userDeviceToken = 'userDeviceToken';
  static String userID = 'userid';
  static String userPhone= "phone";
  static String userPassword = 'userpassword';
  static String userEmail = 'useremail';


  static SharedPreferences? instance ;

  Future<SharedPreferences?> init() async {
    if (instance ==null){
      instance = await SharedPreferences.getInstance();
    }
    return instance;
    // return await SharedPreferences.getInstance();
  }

  static String getStringValue(String key)  {
    return instance?.getString(key)??'';
  }


  static bool? getBoolValue(String key)  {
    return instance?.getBool(key);
  }


  static setStingValue(String key,String value)  {
    instance?.setString(key,value);
  }


  static setBoolValue(String key, bool value){
    instance?.setBool(key, value);
  }

  static clearText(String key) async {
    instance?.remove(key);
  }


}
