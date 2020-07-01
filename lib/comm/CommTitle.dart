import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//回调实现源码的点击
typedef CodeOnTap = void Function();
class Callback {
  CodeOnTap codeOnTap;
  Callback({this.codeOnTap});
}

/// 封装一个公用的title
class CommTitle {
  
  static Color _titleBackgroundColor = Colors.blue;

  static GestureDetector _setTitleLeadingIcon(BuildContext context) {
    return new GestureDetector(
      child: new Icon(
        CupertinoIcons.back,
        color: Colors.white,
      ),
      onTap: () {
        Navigator.pop(context);
      },
    );
  }

  static Text _setTitle(String title) {
    return new Text(title,
      style: new TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.white,
        fontSize: 20.0,
      ),
    );
  }

  static CupertinoNavigationBar setCupertinoNavigationBar(
      BuildContext context, String titleName,Callback callback) {
    var rightBtnName = "";
    if(callback != null){
      rightBtnName = "源码";
    }
    return new CupertinoNavigationBar(
      leading: _setTitleLeadingIcon(context),   //导航栏左侧组件
      automaticallyImplyLeading: true,   //是否显示左边组件
      automaticallyImplyMiddle: true,  //是否显示中间组件  好像无效
      previousPageTitle: "返回",  //导航栏左侧组件右边的文本，设置也无效
      backgroundColor: _titleBackgroundColor,
      middle: _setTitle(titleName),
//      trailing: Icon(Icons.people),
      trailing: setCupertinoTitleViewRightBtn(rightBtnName,callback),  //CupertinoButton  用这个的话middle也不显示了
    );
  }

  //设置标题栏
  static AppBar setMaterialAppBar(
      BuildContext context, String titleName, Callback callback) {
    String rBtnName;
    if(callback==null){
      rBtnName= "";
    }else{
      rBtnName= "源码";
    }
    return new AppBar(
      title: _setTitle(titleName),
      backgroundColor: _titleBackgroundColor,
      leading: _setTitleLeadingIcon(context),
      actions: <Widget>[
        setMaterialTitleViewRightBtn(rBtnName, callback)
      ],
    );
  }

  //设置Cupertino风格标题栏右边的按钮样式
  static Widget  setCupertinoTitleViewRightBtn(String rightBtnName,Callback callback){
    return  new GestureDetector(
        child: new Container(
//          alignment: Alignment.center,
          padding: EdgeInsets.all(10),
          child: new Text(
            rightBtnName,
            style: new TextStyle(
              fontSize: 15,
              color: Colors.white,
            ),
          ),
        ), 
        onTap: (){
          if(callback!=null){
            callback.codeOnTap;
          }
        });
  }
  
  //设置Material风格标题栏右边的按钮样式
  static Widget  setMaterialTitleViewRightBtn(String rBtnName,Callback callback){
    return  new InkWell(
        child: new Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(10),
          child: new Text(
            rBtnName,
            style: new TextStyle(
              fontSize: 15,
              color: Colors.white,
            ),
          ),
        ),
        onTap: () {
          callback.codeOnTap();
        });
  }

  //单独写一个首页不要返回键的
  static AppBar setHomeMaterialAppBar(
      BuildContext context, String titleName) {
    return new AppBar(
      title: _setTitle(titleName),
      backgroundColor: _titleBackgroundColor,
    );
  }
}
