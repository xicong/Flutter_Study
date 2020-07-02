import 'package:flutter/material.dart';
import 'dart:io';

/// 设备相关的一些判断
class DeviceRelated {
  //判断设备是否ios
  static bool isIos() {
    return Platform.isIOS;
  }

  //判断设备是否Android
  static bool isAndroid() {
    return Platform.isAndroid;
  }
}
