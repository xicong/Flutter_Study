import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PublicBorder{

  static Decoration blueRadiusDecoration() {
    return new BoxDecoration(
        color: Colors.white,
        border: new Border.all(color: Colors.blue, width: 1.0),
        borderRadius: new BorderRadius.all(new Radius.circular(5)));
  }

}