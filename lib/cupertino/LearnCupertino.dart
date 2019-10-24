import 'package:flutter/cupertino.dart';
import 'package:flutterdemo/cupertino/CommTitle.dart';

import 'package:flutterdemo/cupertino/LearnCupertinoButton.dart';
import 'package:flutterdemo/cupertino/LearnCupertinoColors.dart';
import 'package:flutterdemo/cupertino/LearnCupertinoIcons.dart';
import 'package:flutterdemo/cupertino/LearnCupertinoNavigationBar.dart';
import 'package:flutterdemo/cupertino/LearnCupertinoPageRoute.dart';
import 'package:flutterdemo/cupertino/LearnCupertinoPageScaffold.dart';
import 'package:flutterdemo/cupertino/LearnCupertinoPicker.dart';
import 'package:flutterdemo/cupertino/LearnCupertinoSlider.dart';
import 'package:flutterdemo/cupertino/LearnCupertinoSwitch.dart';




class LearnCupertino extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new _LearnCupertino();
  }
}
class _LearnCupertino extends State<LearnCupertino>{

Widget setListItem(String title,String description,StatefulWidget name){
  return new GestureDetector(
    child: new Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(5),
      decoration: new BoxDecoration(
          color: CupertinoColors.white,
          border: new Border.all(color: CupertinoColors.activeBlue,width: 1.0),
          borderRadius: new BorderRadius.all(new Radius.circular(5))
      ),
      child: new Row(
        children: <Widget>[
          new Column(
            crossAxisAlignment:CrossAxisAlignment.start,
            children: <Widget>[
              new Text(title,
                style: new TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: CupertinoColors.black
                ),
              ),
              new Text(description,
                style: new TextStyle(
                    fontSize: 15,
                    color: CupertinoColors.inactiveGray
                ),
              )
            ],
          ),
          Spacer(),
          Icon(CupertinoIcons.forward,color: CupertinoColors.black,)
        ],
      ),
    ),
    onTap: (){
      Navigator.push(context,
          new CupertinoPageRoute(builder: (BuildContext context) {
            return name;
          }));
    },
  );
}

  @override
  Widget build(BuildContext context) {
    return new CupertinoApp(
      home: new CupertinoPageScaffold(
        backgroundColor: CupertinoColors.white,
        resizeToAvoidBottomInset:true, //子widget是否应该自动调整自身大小以适应底部的安全距离
        navigationBar: CommTitle.setTitle(context, "Cupertino"),
        child: new ListView(
          children: <Widget>[
            setListItem("CupertinoButton", "ios风格的按钮", new LearnCupertinoButton()),
            setListItem("CupertinoColors", "ios平台常用的颜色", new LearnCupertinoColors()),
            setListItem("CupertinoIcons", "ios平台常用的图标", new LearnCupertinoIcons()),
            setListItem("CupertinoNavigationBar", "ios风格的导航栏", new LearnCupertinoNavigationBar()),
            setListItem("CupertinoPageRoute", "ios风格全屏切换路由的滑动动画", new LearnCupertinoPageRoute()),
            setListItem("CupertinoPageScaffold", "ios应用程序的页面布局", new LearnCupertinoPageScaffold()),
            setListItem("CupertinoPicker", "ios风格的选择器", new LearnCupertinoPicker()),
            setListItem("CupertinoSlider", "ios风格下的滑动条，用来选择范围内的数据", new LearnCupertinoSlider()),
            setListItem("CupertinoSwitch", "ios风格下的Switch组件", new LearnCupertinoSwitch()),
          ],
        ),
      ),
    );
  }

}