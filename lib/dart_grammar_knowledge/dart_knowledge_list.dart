import '../comm/page/MdFileShow.dart';
import 'package:flutter/material.dart';
import '../utils/listitem_utils.dart';
import '../utils/title_utils.dart';

/// Dart知识列表
class DartKnowledgeList extends StatefulWidget {
  const DartKnowledgeList({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _DartKnowledgeList();
  }
}

class _DartKnowledgeList extends State<DartKnowledgeList> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: CommTitle.setMaterialAppBar(context, "Dart知识", null),
        body: ListView(
          children: <Widget>[
            CommListItem.setMaterialListItem(
                context,
                "集合",
                "Dart 集合：List、Set、Map",
                DartSet(
                    title: "Dart集合",
                    mdFilePath:
                        "lib/dart_grammar_knowledge/congregation/Dart_Congregation.md"))
          ],
        ),
      ),
    );
  }
}
