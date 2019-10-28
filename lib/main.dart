//导入dart
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutterdemo/anim/LearnAnimation.dart';
import 'package:flutterdemo/dialog/LearnDialog.dart';
import 'package:flutterdemo/list/LearnList.dart';
import 'package:flutterdemo/layout/LearnLayout.dart';
import 'package:flutterdemo/network/LearnNetwork.dart';
import 'package:flutterdemo/refresh/LearnRefrsh.dart';
import 'package:flutterdemo/widgets/LearnWidgets.dart';
import 'package:flutterdemo/themes/LearnThemes.dart';
import 'package:flutterdemo/comm/CommListItem.dart';

void main() {
  //设置debugPaintSizeEnabled为true来更直观的调试布局问题
  debugPaintSizeEnabled = false;
  runApp(new Main());
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MainApp();
  }
}

class MainApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _MainApp();
  }
}

class _MainApp extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      //MaterialApp  必须有home不然报错
      home: new Scaffold(
//        backgroundColor: ColorUtils.hexToColor("E3E3E3"),
        appBar: new AppBar(
          title: new Text('Flutter学习之路'),
        ),
        body: new Builder(builder: (BuildContext context) {
          return new ListView(
//          itemExtent: 45, //强制设置item的高度
            children: <Widget>[
              CommListItem.setMaterialListItem(
                  context, "Theme", "主题风格", new LearnThemes()),
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
      ),
    );
  }
}
