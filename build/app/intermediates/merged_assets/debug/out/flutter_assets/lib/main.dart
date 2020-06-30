//导入dart
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:Flutter_Study/anim/LearnAnimation.dart';
import 'package:Flutter_Study/comm/CommTitle.dart';
import 'package:Flutter_Study/dart_grammar_knowledge/Dart_Knowledge_List.dart';
import 'package:Flutter_Study/dialog/LearnDialog.dart';
import 'package:Flutter_Study/list/LearnList.dart';
import 'package:Flutter_Study/layout/LearnLayout.dart';
import 'package:Flutter_Study/maindrawer.dart';
import 'package:Flutter_Study/network/LearnNetwork.dart';
import 'package:Flutter_Study/refresh/LearnRefrsh.dart';
import 'package:Flutter_Study/widgets/LearnWidgets.dart';
import 'package:Flutter_Study/comm/CommListItem.dart';



void main() {
  //设置debugPaintSizeEnabled为true来更直观的调试布局问题
//  debugPaintSizeEnabled = true;
  //MaterialApp  必须有home不然报错
  //MaterialApp 直接用路由跳转会报错，所以习惯行性的加一层
  runApp(new MaterialApp(
    home: new Main(),
    theme: new ThemeData(
      primaryColor: Colors.blue,
      primarySwatch: Colors.blue,
    ),
  ));
}

/**
 * StatelessWidget 无状态控件 不可变状态控件 通过构建来描述界面的一部分
 * StatefulWidget 有状态控件
 */
class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MainApp();
  }
}

/**
 * StatefulWidget 有状态控件
 */
class MainApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _MainApp();
  }
}

class _MainApp extends State<MainApp> {
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
//        backgroundColor: ColorUtils.hexToColor("E3E3E3"),
      appBar: CommTitle.setHomeMaterialAppBar(context, "Flutter学习"),
      drawer: new maindrawer(),
      body: new Builder(builder: (BuildContext context) {
        return new ListView(
//          itemExtent: 45, //强制设置item的高度
          children: <Widget>[
            CommListItem.setMaterialListItem(context, "Dart知识点",
                "一些dart语法相关的知识点记录", new Dart_Knowledge_List()),
            CommListItem.setMaterialListItem(
                context, "Widgets", "Android的基础控件", new LearnWidgets()),
            CommListItem.setMaterialListItem(
                context, "Layout", "Android的各种布局控件", new LearnLayout()),
            CommListItem.setMaterialListItem(
                context, "dialog", "Android的各种Dialog", new LearnDialog()),
            CommListItem.setMaterialListItem(
                context, "List", "Android的各种列表", new LearnList()),
            CommListItem.setMaterialListItem(
                context, "Anim", "Android的各种动画", new LearnAnimation()),
            CommListItem.setMaterialListItem(
                context, "Refrsh", "Android的各种刷新", new LearnRefrsh()),
            CommListItem.setMaterialListItem(
                context, "Network", "Android的网络相关", new LearnNetwork()),
          ],
        );
      }),
    );
  }
}
