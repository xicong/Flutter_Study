import 'package:flutter/material.dart';

class ScreenUtils{

  //获取屏幕的宽度
  static double getScreenWidth(BuildContext context){
    return MediaQuery.of(context).size.width;
  }

  //获取屏幕的宽度
  static double getScreenHeight(BuildContext context){
    return MediaQuery.of(context).size.height;
  }

}