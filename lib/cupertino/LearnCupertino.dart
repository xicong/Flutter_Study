import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class LearnCupertino extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new _LearnCupertino();
  }
}
class _LearnCupertino extends State<LearnCupertino>{
  @override
  Widget build(BuildContext context) {
    return new CupertinoApp(
      home: new CupertinoPageScaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset:true, //子widget是否应该自动调整自身大小以适应底部的安全距离
        navigationBar: new CupertinoNavigationBar(
          automaticallyImplyLeading: false, //是否显示左边组件  作用效果无效
          automaticallyImplyMiddle: false,  //是否显示中间组件  作用效果无效
          previousPageTitle: "返回",   //导航左侧组件右边的文本  作用效果无效
          middle: new Text("CupertinoApp"), //导航栏中间的组件
          trailing: Icon(Icons.add,  //导航栏右边的组件
            color: Colors.black,
          ),
          border: Border.all( //设置title栏的边框
              width: 1,
              color: Colors.black
          ),
          leading: Icon(Icons.arrow_back_ios,
            color: Colors.black,
          ),
          backgroundColor: Colors.white, //设置title栏的颜色
          padding: EdgeInsetsDirectional.only(start: 0,end: 0),  //设置标题栏行下左右的内边距
          actionsForegroundColor: CupertinoColors.black,
        ),
        child: new Center(
          child: new Text("qqqqqqqqqqqqqq"),
        ),
      ),
    );
  }

}