import 'package:flutter/material.dart';
import 'package:flutterdemo/comm/CommListItem.dart';
import 'package:flutterdemo/comm/CommTitle.dart';
class LearnMaterialColor extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new _LearnMaterialColor();
  }
}
class _LearnMaterialColor extends State<LearnMaterialColor>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: CommTitle.setMaterialAppBar(context, "MaterialColor"),
      body: new Text("1")
    );
  }
}