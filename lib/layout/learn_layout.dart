import 'package:flutter_study/callback/PageStateCallBack.dart';
import '../utils/page_status_weight_utils.dart';
import '../main.dart';
import 'package:flutter/material.dart';
import '../layout/LearnStack.dart';
import '../layout/LearnTabBar.dart';
import '../utils/listitem_utils.dart';
import '../utils/title_utils.dart';
import '../layout/LearnColumn.dart';
import '../layout/LearnContainer.dart';
import '../layout/LearnScaffold.dart';
import '../layout/LearnRow.dart';
import '../layout/LearnCupertinoTabView.dart';
import 'LearnCupertinoTabBar.dart';
import 'LearnCupertinoTabScaffold.dart';

//各种布局
class LearnLayout extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LearnLayout();
  }
}

class _LearnLayout extends State<LearnLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommTitle.setMaterialAppBar(context, "各种布局控件", null),
      body:
          PageStatusWeight().showRequestStatus(PageStateCallBack(asynchronousTasks: () {
        return initData();
      }, asynchronousResults: (data) {
        return showResultWeight(data);
      })),
    );
  }

  Widget showResultWeight(data) {
    var mData = data as List<MainEntity>;
    return ListView.builder(
        itemCount: mData.length,
        itemBuilder: (context, index) {
          return CommListItem.setCupertinoListItem(context, mData[index].name,
              mData[index].description, mData[index].widget);
        });
  }

  Future<List<MainEntity>> initData() {
    return Future<List<MainEntity>>(() {
      return [
        MainEntity(
            name: "Container",
            description: "一个常用的结合绘画，定位，大小调整的控件",
            widget: LearnContainer()),
        MainEntity(
            name: "Row", description: "一个可以将子元素以横向方向显示的控件", widget: LearnRow()),
        MainEntity(
            name: "Column",
            description: "一个可以将子元素以竖直方向显示的控件",
            widget: LearnColumn()),
        MainEntity(
            name: "Scaffold",
            description: "实现了基本的Material Design布局结构",
            widget: LearnScaffold()),

        //Material风格
        MainEntity(
            name: "Stack",
            description: "用于将多个childs相对于其框的边缘定位，多用于以简单的方式重叠children",
            widget: LearnStack()),
        MainEntity(
            name: "TabBar",
            description: "来实现并行界面的横向滑动展示",
            widget: LearnTabBar()),

        //Cupertino风格
        MainEntity(
            name: "CupertinoTabView",
            description: "具有自己的Navigator状态与历史记录的选项卡视图",
            widget: LearnCupertinoTabView()),
        MainEntity(
            name: "CupertinoTabBar",
            description: "ios风格下底部导航组件",
            widget: LearnCupertinoTabBar()),
        MainEntity(
            name: "CupertinoTabScaffold",
            description: "实现ios应用程序的选项卡式的跟布局与结构",
            widget: LearnCupertinoTabScaffold()),
      ];
    });
  }
}
