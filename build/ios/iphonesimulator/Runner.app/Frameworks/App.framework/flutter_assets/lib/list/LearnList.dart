import 'package:flutter/material.dart';
import 'package:Flutter_Study/list/LearnExpansionPanelList.dart';
import 'package:Flutter_Study/list/LearnGridView.dart';
import 'package:Flutter_Study/list/listview/LearnListView.dart';
import 'package:Flutter_Study/list/LearnTable.dart';
import 'package:Flutter_Study/comm/CommListItem.dart';
import 'package:Flutter_Study/comm/CommTitle.dart';

//各种列表
class LearnList extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _LearnList();
  }
}
class _LearnList extends State<LearnList>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: CommTitle.setMaterialAppBar(context, "各种列表",null),
      body: new ListView(
        children: <Widget>[
          CommListItem.setMaterialListItem(
              context, "ListView", "常见的滚动列表", new LearnListView()),
          CommListItem.setMaterialListItem(context, "ExpansionPanelList",
              "类似qq分组带展开折叠功能的列表", new LearnExpansionPanelList()),
          CommListItem.setMaterialListItem(
              context, "GridView", "可以占满给出空间区域的滚动列表", new LearnGridView()),
          CommListItem.setMaterialListItem(
              context, "Table", "一个可以显示表格控件的布局", new LearnTable()),
        ],
      ),
    );
  }
}