import 'package:flutter/material.dart';
import 'package:flutterdemo/comm/CommListItem.dart';
import 'package:flutterdemo/comm/CommTitle.dart';
import 'package:flutterdemo/material/LearnMaterialColor.dart';
class LearnMaterialApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new _LearnMaterialApp();
  }
}
class _LearnMaterialApp extends State<LearnMaterialApp>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: CommTitle.setMaterialAppBar(context, "MaterialApp"),
      body: new ListView(
        children: <Widget>[
        CommListItem.setMaterialListItem(context, "MaterialColor", "定义单色以及有10中色调的色样", new LearnMaterialColor())
        ],
      )
    );
  }
}