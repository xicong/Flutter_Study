//导入dart
import 'dart:ui' as prefix0;

import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


import 'utils/ColorUtils.dart';
import 'pages/NewsListPage.dart';
import 'pages/TweetsListPage.dart';
import 'pages/DiscoveryPage.dart';
import 'pages/MyInfoPage.dart';
import 'widgets/MyDrawer.dart';

import 'package:flutterdemo/learn/LearnContainer.dart';
import 'package:flutterdemo/learn/LearnText.dart';
import 'package:flutterdemo/learn/LearnScaffold.dart';
import 'package:flutterdemo/learn/LearnImg.dart';
import 'package:flutterdemo/learn/LearnTextField.dart';
import 'package:flutterdemo/material/LearnMaterial.dart';
import 'package:flutterdemo/learn/LearnInkWell.dart';
import 'package:flutterdemo/learn/LearnButton.dart';
import 'package:flutterdemo/learn/LearnDropdownButton.dart';
import 'package:flutterdemo/learn/LearnFloatingActionButton.dart';
import 'package:flutterdemo/learn/LearnCheckBox.dart';
import 'package:flutterdemo/learn/LearnRadioButton.dart';
import 'package:flutterdemo/learn/LearnSlider.dart';
import 'package:flutterdemo/learn/LearnExpansionPanelList.dart';
import 'package:flutterdemo/learn/LearnListView.dart';
import 'package:flutterdemo/learn/LearnGridView.dart';
import 'package:flutterdemo/learn/LearnRefresh.dart';
import 'package:flutterdemo/learn/LearnColumn.dart';
import 'package:flutterdemo/learn/LearnStack.dart';
import 'package:flutterdemo/learn/LearnTable.dart';
import 'package:flutterdemo/learn/LearnAnim.dart';
import 'package:flutterdemo/learn/LearnAnimDisplacement.dart';
import 'package:flutterdemo/learn/LearnAnimRotate.dart';
import 'package:flutterdemo/learn/LearnDialog.dart';
import 'package:flutterdemo/learn/LearnTabBar.dart';
import 'package:flutterdemo/learn/LearnHttp.dart';
import 'package:flutterdemo/learn/LearnJsonAnalysis.dart';
import 'package:flutterdemo/learn/LearnRow.dart';
import 'package:flutterdemo/learn/LearnRichText.dart';


import 'package:flutterdemo/cupertino/LearnCupertinoApp.dart';
import 'package:flutterdemo/material/LearnMaterialApp.dart';

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
  Widget setWidgetNameAndPageName(String widgetName,String description, StatefulWidget pageName) {
    return Builder(
      builder: (context) {
        return new GestureDetector(
          child: new Card(
            elevation: 3.0,
            color: Colors.white,
            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new ListTile(
                  title: new Text(widgetName,
                      style: new TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)
                  ),
                  subtitle: new Text(description,
                    style: new TextStyle(
                        fontSize: 13,
                        color: Colors.grey
                    ),
                  ),
                  dense: true,
                  trailing: Icon(Icons.chevron_right),
                ),
              ],
            ),
          ),
          onTap: () {
            Navigator.push(context,
                new MaterialPageRoute(builder: (BuildContext context) {
              return pageName;
            }));
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      //MaterialApp  必须有home不然报错
      home: new Scaffold(
//        backgroundColor: ColorUtils.hexToColor("E3E3E3"),
        appBar: new AppBar(
          title: new Text('Flutter学习之路'),
        ),
        body: new ListView(
//          itemExtent: 45, //强制设置item的高度
          children: <Widget>[

            //设计风格
            setWidgetNameAndPageName("MaterialApp","Android的Material设置风格", new LearnMaterialApp()),
            setWidgetNameAndPageName("CupertinoApp","ios的Cupertino设置风格", new LearnCupertinoApp()),

            //基本控件
            setWidgetNameAndPageName("Text", "最基本的文本显示组件",new LearnText()),
            setWidgetNameAndPageName("RichText", "具有复杂样式的文本显示组件",new LearnRichText()),
            setWidgetNameAndPageName("TextField","最常用的文本输入控件", new LearnTextField()),
            setWidgetNameAndPageName("Slider","一个用来选择范围性数据的控件", new LearnSlider()),
            setWidgetNameAndPageName("Img","用于展示图片的控件", new LearnImg()),
            setWidgetNameAndPageName("RadioButton","Material Design风格的单选按钮", new LearnRadioButton()),
            setWidgetNameAndPageName("CheckBox","一个简单的复选框控件", new LearnCheckBox()),
            setWidgetNameAndPageName("Button","一个按钮控件", new LearnButton()),
            setWidgetNameAndPageName(
                "FloatingActionButton","浮动动作按钮", new LearnFloatingActionButton()),

            //布局控件
            setWidgetNameAndPageName("Column","一个可以将子元素以竖直方向显示的控件", new LearnColumn()),
            setWidgetNameAndPageName("Row","一个可以将子元素以横向方向显示的控件", new LearnRow()),
            setWidgetNameAndPageName("GridView","可以占满给出空间区域的滚动列表", new LearnGridView()),
            setWidgetNameAndPageName(
                "ExpansionPanelList","类似qq分组带展开折叠功能的列表", new LearnExpansionPanelList()),
            setWidgetNameAndPageName("Container","一个常用的结合绘画，定位，大小调整的控件", new LearnContainer()),
            setWidgetNameAndPageName("Stack","用于将多个childs相对于其框的边缘定位，多用于以简单的方式重叠children", new LearnStack()),
            setWidgetNameAndPageName("TabBar","来实现并行界面的横向滑动展示", new LearnTabBar()),

            //列表控件
            setWidgetNameAndPageName("Table", "一个可以显示表格控件的布局",new LearnTable()),
            setWidgetNameAndPageName("ListView","常见的滚动列表", new LearnListView()),

            //弹窗控件
            setWidgetNameAndPageName("Dialog","向用户传递信息的弹出窗", new LearnDialog()),
            setWidgetNameAndPageName(
                "DropdownButton","一个下载选择菜单的按钮", new LearnDropdownButton()),
            setWidgetNameAndPageName("Scaffold","实现了基本的Material Design布局结构", new LearnScaffold()),

            //动画
            setWidgetNameAndPageName("Anim","一个图片放大的动画", new LearnAnim()),
            setWidgetNameAndPageName("AnimRotate","", new LearnAnimRotate()),
            setWidgetNameAndPageName(
                "AnimDisplacement","一个位移动画", new LearnAnimDisplacement()),

            //刷新
            setWidgetNameAndPageName("Refresh","用于常见的页面刷新功能", new LearnRefresh()),

            //网络
            setWidgetNameAndPageName("Http","用于请求网络上的数据进行其交互", new LearnHttp()),
            setWidgetNameAndPageName("JsonAnalysis","用以解析json结构的数据", new LearnJsonAnalysis()),

            //一些特殊效果
            setWidgetNameAndPageName("InkWell","可以实现线框，水波纹等一些特殊效果", new LearnInkWell()),

          ],
        ),
      ),
    );
  }
}
