import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

//公用的一个边框
class PublicBorder{

  Decoration blueRadiusDecoration() {
    return new BoxDecoration(
        color: Colors.white,
        border: new Border.all(color: Colors.blue, width: 1.0),
        borderRadius: new BorderRadius.all(new Radius.circular(5)));
  }

}