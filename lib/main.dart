//导入dart
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
import 'package:flutterdemo/learn/LearnMaterial.dart';
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

void main(){
  //设置debugPaintSizeEnabled为true来更直观的调试布局问题
  debugPaintSizeEnabled=false;
  runApp(new Main());
}
class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MainApp();
  }
}
class MainApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new _MainApp();
  }
}
class _MainApp extends State<MainApp>{
  Widget setWidgetNameAndPageName(String widgetName,StatefulWidget pageName){
    return Builder(
        builder: (context){
          return new GestureDetector(
            child: new Container(
              child: new Text(widgetName),
              alignment: Alignment.centerLeft,
//                    color: Colors.white,
              decoration: new BoxDecoration(  //设置了decoration的话，就不能设置color属性，否则会报错，此时应该在decoration中进行颜色的设置。
                  border: new Border.all(
                      width: 5.0,
                      color: Colors.yellow
                  ),
                  color: Colors.white,
                  borderRadius: new BorderRadius.all(new Radius.circular(5))
              ),
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.only(left: 5),
            ),
            onTap: (){
              Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context){
                return pageName;
              }));
            },
          );
        },
    );
  }
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(  //MaterialApp  必须有home不然报错
      home: new Scaffold(
        backgroundColor: ColorUtils.hexToColor("E3E3E3"),
        appBar: new AppBar(
          title: new Text('Flutter学习之路'),
        ),
        body: new ListView(
          itemExtent: 45, //强制设置item的高度
            children: <Widget>[
            setWidgetNameAndPageName("Text",new LearnText()),
            setWidgetNameAndPageName("TextField",new LearnTextField()),
            setWidgetNameAndPageName("Table",new LearnTable()),
            setWidgetNameAndPageName("TabBar",new LearnTabBar()),
            setWidgetNameAndPageName("Stack",new LearnStack()),
            setWidgetNameAndPageName("Slider",new LearnSlider()),
            setWidgetNameAndPageName("Scaffold",new LearnScaffold()),
            setWidgetNameAndPageName("Refresh",new LearnRefresh()),
            setWidgetNameAndPageName("RadioButton",new LearnRadioButton()),
            setWidgetNameAndPageName("Material",new LearnMaterial()),
            setWidgetNameAndPageName("ListView",new LearnListView()),
            setWidgetNameAndPageName("JsonAnalysis",new LearnJsonAnalysis()),
            setWidgetNameAndPageName("InkWell",new LearnInkWell()),
            setWidgetNameAndPageName("Img",new LearnImg()),
            setWidgetNameAndPageName("Http",new LearnHttp()),
            setWidgetNameAndPageName("GridView",new LearnGridView()),
            setWidgetNameAndPageName("FloatingActionButton",new LearnFloatingActionButton()),
            setWidgetNameAndPageName("ExpansionPanelList",new LearnExpansionPanelList()),
            setWidgetNameAndPageName("DropdownButton",new LearnDropdownButton()),
            setWidgetNameAndPageName("Dialog",new LearnDialog()),
            setWidgetNameAndPageName("Container",new LearnContainer()),
            setWidgetNameAndPageName("Column",new LearnColumn()),
            setWidgetNameAndPageName("CheckBox",new LearnCheckBox()),
            setWidgetNameAndPageName("Button",new LearnButton()),
            setWidgetNameAndPageName("Anim",new LearnAnim()),
            setWidgetNameAndPageName("AnimRotate",new LearnAnimRotate()),
            setWidgetNameAndPageName("AnimDisplacement",new LearnAnimDisplacement()),
          ],
        ),
      ),
    );
  }
}


