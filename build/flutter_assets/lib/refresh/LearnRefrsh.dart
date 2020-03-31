import 'package:flutter/material.dart';
import 'package:flutterdemo/refresh/LearnRefreshRefreshIndicator.dart';
import 'package:flutterdemo/comm/CommListItem.dart';
import 'package:flutterdemo/comm/CommTitle.dart';

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
      appBar: CommTitle.setMaterialAppBar(context, "刷新",null),
      body: new ListView(
        children: <Widget>[
          CommListItem.setMaterialListItem(
              context, "RefreshIndicator", "用于常见的页面刷新功能", new LearnRefreshRefreshIndicator()),
        ],
      ),
    );
  }
}