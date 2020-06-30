import 'package:flutter/material.dart';
import 'package:Flutter_Study/layout/LearnStack.dart';
import 'package:Flutter_Study/layout/LearnTabBar.dart';
import 'package:Flutter_Study/comm/CommListItem.dart';
import 'package:Flutter_Study/comm/CommTitle.dart';
import 'package:Flutter_Study/layout/LearnColumn.dart';
import 'package:Flutter_Study/layout/LearnContainer.dart';
import 'package:Flutter_Study/layout/LearnScaffold.dart';
import 'package:Flutter_Study/layout/LearnRow.dart';
import 'package:Flutter_Study/layout/LearnCupertinoTabView.dart';

import 'LearnCupertinoTabBar.dart';
import 'LearnCupertinoTabScaffold.dart';

//各种布局
class LearnLayout extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _LearnLayout();
  }
}
class _LearnLayout extends State<LearnLayout>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: CommTitle.setMaterialAppBar(context, "各种布局控件",null),
      body: new ListView(
        children: <Widget>[
          CommListItem.setMaterialListItem(
              context, "Container", "一个常用的结合绘画，定位，大小调整的控件",
              new LearnContainer()),
          CommListItem.setMaterialListItem(
              context, "Row", "一个可以将子元素以横向方向显示的控件", new LearnRow()),
          CommListItem.setMaterialListItem(
              context, "Column", "一个可以将子元素以竖直方向显示的控件", new LearnColumn()),
          CommListItem.setMaterialListItem(context, "Scaffold",
              "实现了基本的Material Design布局结构", new LearnScaffold()),

          //Material风格
          CommListItem.setMaterialListItem(
              context,
              "Stack",
              "用于将多个childs相对于其框的边缘定位，多用于以简单的方式重叠children",
              new LearnStack()),
          CommListItem.setMaterialListItem(
              context, "TabBar", "来实现并行界面的横向滑动展示", new LearnTabBar()),

          //Cupertino风格
          CommListItem.setCupertinoListItem(context, "CupertinoTabView",
              "具有自己的Navigator状态与历史记录的选项卡视图", new LearnCupertinoTabView()),
          CommListItem.setCupertinoListItem(context, "CupertinoTabBar",
              "ios风格下底部导航组件", new LearnCupertinoTabBar()),
          CommListItem.setCupertinoListItem(context, "CupertinoTabScaffold",
              "实现ios应用程序的选项卡式的跟布局与结构", new LearnCupertinoTabScaffold()),
        ],
      ),
    );
  }
}