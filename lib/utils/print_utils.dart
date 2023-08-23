import 'package:flutter/foundation.dart';
void showPrint(dynamic msg){
  if (!kDebugMode) return;
  print("${msg}");
}