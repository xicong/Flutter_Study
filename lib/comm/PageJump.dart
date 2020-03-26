import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterdemo/comm/DeviceRelated.dart';

/**
 * 封装页面跳转
 */
class PageJump {

  //页面跳转
  static goNewPage(BuildContext context, StatefulWidget name) {
    if (DeviceRelated.isIos()) {
      Navigator.push(context,
          new CupertinoPageRoute(builder: (BuildContext context) {
            return name;
          }));
    } else {
      Navigator.push(context,
          new MaterialPageRoute(builder: (BuildContext context) {
            return name;
          }));
    }
  }


  //返回上一个页面
  static backPage(BuildContext context) {
    Navigator.pop(context);
  }

}