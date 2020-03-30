import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//回调实现源码的点击
typedef CodeOnTap = void Function();

class Callback {
  CodeOnTap codeOnTap;
  Callback({CodeOnTap this.codeOnTap});
}

/**
 * 封装一个公用的title
 */
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
    return new Text(
      title,
      style: new TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.white,
        fontSize: 20.0,
      ),
    );
  }

  static CupertinoNavigationBar setCupertinoNavigationBar(
      BuildContext context, String titleName) {
    return new CupertinoNavigationBar(
      leading: _setTitleLeadingIcon(context),
      backgroundColor: _titleBackgroundColor,
      middle: _setTitle(titleName),
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
        new InkWell(
            child: new Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              child: new Text(
                rBtnName,
                style: new TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            onTap: () {
              callback.codeOnTap();
            }),
      ],
    );
  }

  //单独写一个首页不要返回键的
  static AppBar setMaterialHomeAppBar(
      BuildContext context, String titleName) {
    return new AppBar(
      title: _setTitle(titleName),
      backgroundColor: _titleBackgroundColor,
    );
  }
}
