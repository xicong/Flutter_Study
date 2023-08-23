import 'package:flutter/widgets.dart';
import 'package:getwidget/getwidget.dart';

void showToast(BuildContext context,String msg){
  GFToast.showToast(
      msg,
      context,
      toastPosition: GFToastPosition.TOP
  );
}