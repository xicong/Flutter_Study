import 'package:flutter/material.dart';

class ListViewData with ChangeNotifier{
  
  List<String> list = <String>[];
  
  void init(){
    list
      ..add("1")
      ..add("2")
      ..add("3")
      ..add("4")
      ..add("5")
      ..add("6")
      ..add("7")
      ..add("8")
      ..add("9")
      ..add("10")
      ..add("11")
      ..add("12")
      ..add("13")
      ..add("14")
      ..add("15")
      ..add("16")
      ..add("17")
      ..add("18");
  }
  
  void updateData(int index,String value){
    list[index] = value;
    notifyListeners();
  }
  
  void daleteData(int index){
    list.removeAt(index);
    notifyListeners();
  }
}