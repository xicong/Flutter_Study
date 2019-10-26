//导入dart
import 'dart:ui' as prefix0;

import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutterdemo/element/LearnElement.dart';
import 'package:flutterdemo/themes/LearnThemes.dart';
import 'package:flutterdemo/comm/CommListItem.dart';
import 'package:flutterdemo/components/LearnComponents.dart';

import 'package:flutterdemo/widget/LearnContainer.dart';
import 'package:flutterdemo/element/form/LearnText.dart';
import 'package:flutterdemo/element/media/LearnImg.dart';
import 'package:flutterdemo/widget/LearnTextField.dart';
import 'package:flutterdemo/widget/LearnInkWell.dart';
import 'package:flutterdemo/element/form/LearnButton.dart';
import 'package:flutterdemo/widget/LearnDropdownButton.dart';
import 'package:flutterdemo/widget/LearnFloatingActionButton.dart';
import 'package:flutterdemo/widget/LearnCheckBox.dart';
import 'package:flutterdemo/widget/LearnExpansionPanelList.dart';
import 'package:flutterdemo/widget/LearnRefresh.dart';
import 'package:flutterdemo/widget/LearnColumn.dart';
import 'package:flutterdemo/element/frame/LearnStack.dart';
import 'package:flutterdemo/element/frame/LearnTable.dart';
import 'package:flutterdemo/widget/LearnAnim.dart';
import 'package:flutterdemo/widget/LearnAnimDisplacement.dart';
import 'package:flutterdemo/widget/LearnAnimRotate.dart';
import 'package:flutterdemo/widget/LearnTabBar.dart';
import 'package:flutterdemo/widget/LearnHttp.dart';
import 'package:flutterdemo/widget/LearnJsonAnalysis.dart';
import 'package:flutterdemo/widget/LearnRow.dart';
import 'package:flutterdemo/widget/LearnRichText.dart';


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
                  context, "Element", "各种元素", new LearnElement()),
              CommListItem.setMaterialListItem(
                  context, "Components", "各种组件", new LearnComponents()),
              CommListItem.setMaterialListItem(
                  context, "Theme", "主题风格", new LearnThemes()),

//
              //基本控件
              CommListItem.setMaterialListItem(
                  context, "RichText", "具有复杂样式的文本显示组件", new LearnRichText()),
              CommListItem.setMaterialListItem(
                  context, "TextField", "最常用的文本输入控件", new LearnTextField()),
              CommListItem.setMaterialListItem(
                  context, "CheckBox", "一个简单的复选框控件", new LearnCheckBox()),

              CommListItem.setMaterialListItem(context,
                  "FloatingActionButton", "浮动动作按钮",
                  new LearnFloatingActionButton()),

              //布局控件
              CommListItem.setMaterialListItem(
                  context, "Column", "一个可以将子元素以竖直方向显示的控件", new LearnColumn()),
              CommListItem.setMaterialListItem(
                  context, "Row", "一个可以将子元素以横向方向显示的控件", new LearnRow()),

              CommListItem.setMaterialListItem(context,
                  "ExpansionPanelList", "类似qq分组带展开折叠功能的列表",
                  new LearnExpansionPanelList()),
              CommListItem.setMaterialListItem(
                  context, "Container", "一个常用的结合绘画，定位，大小调整的控件",
                  new LearnContainer()),
              CommListItem.setMaterialListItem(
                  context, "Stack", "用于将多个childs相对于其框的边缘定位，多用于以简单的方式重叠children",
                  new LearnStack()),
              CommListItem.setMaterialListItem(
                  context, "TabBar", "来实现并行界面的横向滑动展示", new LearnTabBar()),

              //列表控件



              //弹窗控件

              CommListItem.setMaterialListItem(context,
                  "DropdownButton", "一个下载选择菜单的按钮", new LearnDropdownButton()),


              //动画
              CommListItem.setMaterialListItem(
                  context, "Anim", "一个图片放大的动画", new LearnAnim()),
              CommListItem.setMaterialListItem(
                  context, "AnimRotate", "", new LearnAnimRotate()),
              CommListItem.setMaterialListItem(context,
                  "AnimDisplacement", "一个位移动画", new LearnAnimDisplacement()),

              //刷新
              CommListItem.setMaterialListItem(
                  context, "Refresh", "用于常见的页面刷新功能", new LearnRefresh()),

              //网络
              CommListItem.setMaterialListItem(
                  context, "Http", "用于请求网络上的数据进行其交互", new LearnHttp()),
              CommListItem.setMaterialListItem(
                  context, "JsonAnalysis", "用以解析json结构的数据",
                  new LearnJsonAnalysis()),

              //一些特殊效果
              CommListItem.setMaterialListItem(
                  context, "InkWell", "可以实现线框，水波纹等一些特殊效果", new LearnInkWell()),

            ],
          );
        }),
      ),
    );
  }
}
