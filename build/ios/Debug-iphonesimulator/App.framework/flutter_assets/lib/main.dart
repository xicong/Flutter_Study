//导入dart
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_study/refresh/learn_refrsh.dart';
import 'package:flutter_study/widgets/learn_widgets.dart';
import 'anim/learn_animation.dart';
import 'utils/listitem_utils.dart';
import 'utils/title_utils.dart';
import 'utils/page_status_weight_utils.dart';
import 'dart_grammar_knowledge/dart_knowledge_list.dart';
import 'dialog/learn_dialog.dart';
import 'layout/learn_layout.dart';
import 'list/learn_list.dart';
import 'main_drawer.dart';
import 'network/learn_network.dart';

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

/// StatelessWidget 无状态控件 不可变状态控件 通过构建来描述界面的一部分
/// StatefulWidget 有状态控件
class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MainApp();
  }
}

/// StatefulWidget 有状态控件
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
      drawer: new mainDrawer(),
      body:
          PageStatusWeight().showRequestStatus(CallBack(asynchronousTasks: () {
        return initData();
      }, asynchronousResults: (data) {
        return showResultWeight(data);
      })),
    );
  }

  Future<List<MainEntity>> initData() {
    return Future<List<MainEntity>>(() {
      return [
        MainEntity(
            name: "Dart知识点",
            description: "一些dart语法相关的知识点记录",
            widget: DartKnowledgeList()),
        MainEntity(
            name: "Widgets",
            description: "Android的基础控件",
            widget: LearnWidgets()),
        MainEntity(
            name: "Layout",
            description: "Android的各种布局控件",
            widget: LearnLayout()),
        MainEntity(
            name: "Dialog",
            description: "Android的各种Dialog",
            widget: LearnDialog()),
        MainEntity(
            name: "List", description: "Android的各种列表", widget: LearnList()),
        MainEntity(
            name: "Anim",
            description: "Android的各种动画",
            widget: LearnAnimation()),
        MainEntity(
            name: "Refrsh", description: "Android的各种刷新", widget: LearnRefrsh()),
        MainEntity(
            name: "Network",
            description: "Android的网络相关",
            widget: LearnNetwork()),
      ];
    });
  }

  Widget showResultWeight(data) {
    var mData = data as List<MainEntity>;
    return new ListView.builder(
        itemCount: mData.length,
        itemBuilder: (context, index) {
          return CommListItem.setMaterialListItem(context, mData[index].name,
              mData[index].description, mData[index].widget);
        });
  }
}

class MainEntity {
  String name;
  String description;
  Widget widget;
  MainEntity({this.name, this.description, this.widget});
}
