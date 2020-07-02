import '../comm/page/MdFileShow.dart';
import 'package:flutter/material.dart';
import '../comm/CommListItem.dart';
import '../comm/CommTitle.dart';

/**
 * Dart知识列表
 */
class DartKnowledgeList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _DartKnowledgeList();
  }
}

class _DartKnowledgeList extends State<DartKnowledgeList> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: CommTitle.setMaterialAppBar(context, "Dart知识", null),
        body: new ListView(
          children: <Widget>[
            CommListItem.setMaterialListItem(
                context,
                "集合",
                "Dart 集合：List、Set、Map",
                new DartSet(
                    title: "Dart集合",
                    mdFilePath:
                        "lib/dart_grammar_knowledge/congregation/Dart_Congregation.md"))
          ],
        ),
      ),
    );
  }
}
