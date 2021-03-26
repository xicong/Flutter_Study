import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StyleUtils{

  //统一列表条目蓝色圆角边框样式
  static Decoration blueRadiusDecoration() {
    return new BoxDecoration(
        color: Colors.white,
        border: new Border.all(color: Colors.blue, width: 1.0),
        borderRadius: new BorderRadius.all(new Radius.circular(5)));
  }

  //统一的dialog圆角样式
  static ShapeBorder  radiusBorder(){
    return new RoundedRectangleBorder(
        borderRadius: new BorderRadius.all(Radius.circular(20)));
  }
  
}