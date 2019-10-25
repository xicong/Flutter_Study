import 'package:flutter/cupertino.dart';
import 'package:flutterdemo/comm/CommListItem.dart';
import 'package:flutterdemo/comm/CommTitle.dart';

import 'package:flutterdemo/cupertino/LearnCupertinoButton.dart';
import 'package:flutterdemo/cupertino/LearnCupertinoColors.dart';
import 'package:flutterdemo/cupertino/LearnCupertinoIcons.dart';
import 'package:flutterdemo/cupertino/LearnCupertinoNavigationBar.dart';
import 'package:flutterdemo/cupertino/LearnCupertinoPageRoute.dart';
import 'package:flutterdemo/cupertino/LearnCupertinoPageScaffold.dart';
import 'package:flutterdemo/cupertino/LearnCupertinoPicker.dart';
import 'package:flutterdemo/cupertino/LearnCupertinoSlider.dart';
import 'package:flutterdemo/cupertino/LearnCupertinoSwitch.dart';
import 'package:flutterdemo/cupertino/LearnCupertinoPopupSurface.dart';
import 'package:flutterdemo/cupertino/LearnCupertinoScrollbar.dart';
import 'package:flutterdemo/cupertino/LearnCupertinoSegmentedControl.dart';
import 'package:flutterdemo/cupertino/LearnCupertinoSliverNavigationBar.dart';
import 'package:flutterdemo/cupertino/LearnCupertinoTabBar.dart';
import 'package:flutterdemo/cupertino/LearnCupertinoTabScaffold.dart';
import 'package:flutterdemo/cupertino/LearnCupertinoTabView.dart';
import 'package:flutterdemo/cupertino/LearnCupertinoTimePicker.dart';


class LearnCupertinoApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new _LearnCupertinoApp();
  }
}
class _LearnCupertinoApp extends State<LearnCupertinoApp>{
  @override
  Widget build(BuildContext context) {
    return new CupertinoApp(
      home: new CupertinoPageScaffold(
        backgroundColor: CupertinoColors.white,
        resizeToAvoidBottomInset:true, //子widget是否应该自动调整自身大小以适应底部的安全距离
        navigationBar: CommTitle.setCupertinoNavigationBar(context, "CupertinoApp"),
        child: new ListView(
          children: <Widget>[
            CommListItem.setCupertinoListItem(context,"CupertinoButton", "ios风格的按钮", new LearnCupertinoButton()),
            CommListItem.setCupertinoListItem(context,"CupertinoColors", "ios平台常用的颜色", new LearnCupertinoColors()),
            CommListItem.setCupertinoListItem(context,"CupertinoIcons", "ios平台常用的图标", new LearnCupertinoIcons()),
            CommListItem.setCupertinoListItem(context,"CupertinoNavigationBar", "ios风格的导航栏", new LearnCupertinoNavigationBar()),
            CommListItem.setCupertinoListItem(context,"CupertinoPageRoute", "ios风格全屏切换路由的滑动动画", new LearnCupertinoPageRoute()),
            CommListItem.setCupertinoListItem(context,"CupertinoPageScaffold", "ios应用程序的页面布局", new LearnCupertinoPageScaffold()),
            CommListItem.setCupertinoListItem(context,"CupertinoPicker", "ios风格的选择器", new LearnCupertinoPicker()),
            CommListItem.setCupertinoListItem(context,"CupertinoSlider", "ios风格下的滑动条，用来选择范围内的数据", new LearnCupertinoSlider()),
            CommListItem.setCupertinoListItem(context,"CupertinoSwitch", "ios风格下的Switch组件", new LearnCupertinoSwitch()),
            CommListItem.setCupertinoListItem(context,"CupertinoPopupSurface", "ios弹出式表面", new LearnCupertinoPopupSurface()),
            CommListItem.setCupertinoListItem(context,"CupertinoScrollbar", "ios样式风格的滚动条", new LearnCupertinoScrollbar()),
            CommListItem.setCupertinoListItem(context,"CupertinoSegmentedControl", "ios样式风格展示一些用户可以选择的选项", new LearnCupertinoSegmentedControl()),
            CommListItem.setCupertinoListItem(context,"CupertinoSliverNavigationBar", "ios-11风格下拥有一个较大标题块的导航栏目", new LearnCupertinoSliverNavigationBar()),
            CommListItem.setCupertinoListItem(context,"CupertinoTabBar", "ios风格下底部导航组件", new LearnCupertinoTabBar()),
            CommListItem.setCupertinoListItem(context,"CupertinoTabScaffold", "实现ios应用程序的选项卡式的跟布局与结构", new LearnCupertinoTabScaffold()),
            CommListItem.setCupertinoListItem(context,"CupertinoTabView", "具有自己的Navigator状态与历史记录的选项卡视图", new LearnCupertinoTabView()),
            CommListItem.setCupertinoListItem(context,"CupertinoTimePicker", "ios风格下的时间选择组件", new LearnCupertinoTimePicker()),
          ],
        ),
      ),
    );
  }

}