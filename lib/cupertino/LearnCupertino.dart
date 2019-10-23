import 'package:flutter/cupertino.dart';

import 'package:flutterdemo/cupertino/LearnCupertinoButton.dart';
import 'package:flutterdemo/cupertino/LearnCupertinoColors.dart';
import 'package:flutterdemo/cupertino/LearnCupertinoIcons.dart';

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
          border: new Border.all(color: CupertinoColors.black,width: 1.0),
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
        navigationBar: new CupertinoNavigationBar(
          automaticallyImplyLeading: false, //是否显示左边组件  作用效果无效
          automaticallyImplyMiddle: false,  //是否显示中间组件  作用效果无效
          previousPageTitle: "返回",   //导航左侧组件右边的文本  作用效果无效
          middle: new Text("CupertinoApp"), //导航栏中间的组件
          trailing: Icon(CupertinoIcons.add,  //导航栏右边的组件
            color: CupertinoColors.black,
          ),
          border: Border.all( //设置title栏的边框
              width: 1,
              color: CupertinoColors.black
          ),
          leading: new GestureDetector(
            child: Icon(CupertinoIcons.back,
              color: CupertinoColors.black,
            ),
            onTap: (){
              Navigator.pop(context);
            },
          ),
          backgroundColor: CupertinoColors.white, //设置title栏的颜色
          padding: EdgeInsetsDirectional.only(start: 0,end: 0),  //设置标题栏行下左右的内边距
          actionsForegroundColor: CupertinoColors.black,
        ),
        child: new ListView(
          children: <Widget>[
            setListItem("CupertinoButton", "ios风格的按钮", new LearnCupertinoButton()),
            setListItem("CupertinoColors", "ios平台常用的颜色", new LearnCupertinoColors()),
            setListItem("CupertinoIcons", "ios平台常用的图标", new LearnCupertinoIcons()),
          ],
        ),
      ),
    );
  }

}