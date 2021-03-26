import 'package:shared_preferences/shared_preferences.dart';
class UserInfoSpUtils{
  
  static SharedPreferences _sp;

  // 如果_sp已存在，直接返回，为null时创建
  static Future<SharedPreferences> get _appSp async {
    if (_sp == null) {
      _sp = await SharedPreferences.getInstance();
    }
    return _sp;
  }

  static String _UserHeadImg = "UserHeadImg";
  
  static void saveUserHeadImg(String path) async{
    SharedPreferences prefs = await _appSp;
    prefs.setString(_UserHeadImg, path);
  }

  static Future<String> getUserHeadImg() async{
    SharedPreferences prefs = await _appSp;
    return prefs.getString(_UserHeadImg);
  }
  
}