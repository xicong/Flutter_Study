import 'package:flutter/material.dart';
import 'package:flutterdemo/comm/CommListItem.dart';
import 'package:flutterdemo/comm/CommTitle.dart';
import 'package:flutterdemo/commpage/MdFileShow.dart';

/**
 * Dart知识列表
 */
class Dart_Knowledge_List extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new _Dart_Knowledge_List();
  }
}
class _Dart_Knowledge_List extends State<Dart_Knowledge_List>{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: CommTitle.setMaterialAppBar(context, "Dart知识", null),
        body: new ListView(
          children: <Widget>[
            CommListItem.setMaterialListItem(context, "集合", "Dart 集合：List、Set、Map", 
                new DartSet(title: "Dart集合",mdFilePath: "lib/dart_grammar_knowledge/congregation/Dart_Congregation.md"))
          ],
        ),
      ),
    );
  }
  
}