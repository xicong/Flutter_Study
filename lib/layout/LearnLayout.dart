import 'package:flutter/material.dart';
import 'package:flutterdemo/listview/LearnExpansionPanelList.dart';
import 'package:flutterdemo/widgets/LearnStack.dart';
import 'package:flutterdemo/widgets/LearnTabBar.dart';
import 'package:flutterdemo/listview/LearnTable.dart';
import 'package:flutterdemo/comm/CommListItem.dart';
import 'package:flutterdemo/comm/CommTitle.dart';
import 'package:flutterdemo/widgets/LearnRadioButton.dart';
import 'package:flutterdemo/widgets/LearnSlider.dart';
import 'package:flutterdemo/widgets/LearnImg.dart';
import 'package:flutterdemo/widgets/LearnColumn.dart';
import 'package:flutterdemo/widgets/LearnContainer.dart';
import 'package:flutterdemo/widgets/LearnScaffold.dart';
import 'package:flutterdemo/widgets/LearnText.dart';
import 'package:flutterdemo/widgets/LearnButton.dart';
import 'package:flutterdemo/widgets/LearnRow.dart';

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
      appBar: CommTitle.setMaterialAppBar(context, "各种布局控件"),
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


          CommListItem.setMaterialListItem(
              context,
              "Stack",
              "用于将多个childs相对于其框的边缘定位，多用于以简单的方式重叠children",
              new LearnStack()),
          CommListItem.setMaterialListItem(
              context, "TabBar", "来实现并行界面的横向滑动展示", new LearnTabBar()),
        ],
      ),
    );
  }
}