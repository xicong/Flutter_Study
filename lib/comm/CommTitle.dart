import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterdemo/comm/PageJump.dart';

/**
 * 封装一个公用的title
 */
class CommTitle{

  static Color _titleBackgroundColor=Colors.blue;

  static GestureDetector _setTitleLeadingIcon(BuildContext context){
    return new GestureDetector(
      child: new Icon(
        CupertinoIcons.back,
        color: Colors.white,
      ),
      onTap: () {
        PageJump.backPage(context);
      },
    );
  }

  static Text _setTitle(String title){
    return new Text(title,
      style: new TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.white,
        fontSize: 20.0,
      ),
    );
  }

  static CupertinoNavigationBar setCupertinoNavigationBar(BuildContext context,String titleName){
    return new CupertinoNavigationBar(
      leading: _setTitleLeadingIcon(context),
      backgroundColor: _titleBackgroundColor,
      middle: _setTitle(titleName),
    );
  }

  static AppBar setMaterialAppBar(BuildContext context,String titleName){
    return new AppBar(
      title: _setTitle(titleName),
      backgroundColor: _titleBackgroundColor,
      leading: _setTitleLeadingIcon(context),
    );
  }
}
