import 'package:flutter/widgets.dart';
import 'package:getwidget/getwidget.dart';

class ToastUtils{
  
  static show(String msg,BuildContext context){
    GFToast.showToast(
        msg, 
        context,
        toastPosition: GFToastPosition.TOP
    );
  }
}