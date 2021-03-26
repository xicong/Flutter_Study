import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastUtils{
  
  static show(String msg){
    Fluttertoast.showToast(msg: msg,
      toastLength: Toast.LENGTH_LONG,
      backgroundColor: Colors.blue,
      textColor: Colors.white,
      fontSize: 10,
    );
  }
}