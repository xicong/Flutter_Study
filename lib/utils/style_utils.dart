import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StyleUtils{

  //统一列表条目蓝色圆角边框样式
  static Decoration blueRadiusDecoration() {
    return BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.blue, width: 1.0),
        borderRadius: BorderRadius.all(Radius.circular(5)));
  }

  //统一的dialog圆角样式
  static ShapeBorder  radiusBorder(){
    return RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)));
  }
  
}