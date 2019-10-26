import 'package:flutter/material.dart';
import 'package:flutterdemo/comm/CommListItem.dart';
import 'package:flutterdemo/comm/CommTitle.dart';
import 'package:flutterdemo/components/dialog/LearnDialog.dart';
import 'package:flutterdemo/components/grid/LearnGridView.dart';
import 'package:flutterdemo/components/list/LearnListView.dart';
import 'package:flutterdemo/components/scaffold/LearnScaffold.dart';

class LearnComponents extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _LearnComponents();
  }
}

class _LearnComponents extends State<LearnComponents> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: CommTitle.setMaterialAppBar(context, "Components"),
      body: new ListView(
        children: <Widget>[
          CommListItem.setMaterialListItem(
              context, "ListView", "常见的滚动列表", new LearnListView()),
          CommListItem.setMaterialListItem(
              context, "GridView", "可以占满给出空间区域的滚动列表", new LearnGridView()),
          CommListItem.setMaterialListItem(context, "Scaffold",
              "实现了基本的Material Design布局结构", new LearnScaffold()),
          CommListItem.setMaterialListItem(
              context, "Dialog", "向用户传递信息的弹出窗", new LearnDialog()),
        ],
      ),
    );
  }
}
