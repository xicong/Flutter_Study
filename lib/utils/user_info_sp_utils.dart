import 'package:shared_preferences/shared_preferences.dart';

class UserInfoSpUtils{

  static final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  static late Future<String> _counter;
  
  static const String userHeadImg = "UserHeadImg";
  static Future<void> saveUserHeadImg(String path) async {
    final SharedPreferences prefs = await _prefs;
    _counter = prefs.setString(userHeadImg, path).then((bool success) {
      return path;
    });
  }
  static String? getUserHeadImg(){
    _counter = _prefs.then((SharedPreferences prefs) {
      return prefs.getString(userHeadImg) ?? "";
    });
  }
  
}