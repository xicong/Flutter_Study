import 'package:flutter/material.dart';
import 'package:flutterdemo/anim/LearnAnimDisplacement.dart';
import 'package:flutterdemo/anim/LearnAnimRotate.dart';
import 'package:flutterdemo/dialog/LearnDropdownButton.dart';
import 'package:flutterdemo/refresh/LearnRefreshRefreshIndicator.dart';
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

//各种动画
class LearnRefrsh extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _LearnRefrsh();
  }
}
class _LearnRefrsh extends State<LearnRefrsh>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: CommTitle.setMaterialAppBar(context, "刷新"),
      body: new ListView(
        children: <Widget>[
          CommListItem.setMaterialListItem(
              context, "RefreshIndicator", "用于常见的页面刷新功能", new LearnRefreshRefreshIndicator()),
        ],
      ),
    );
  }
}