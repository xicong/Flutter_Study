import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//typedef ItemOnTap = Function();
//
//class CallBack{
//  ItemOnTap itemOnTap;
//  CallBack({ItemOnTap this.itemOnTap});
//}

/**
 * 封装一个公用的item
 */
class CommListItem {
  static Decoration _setListItemDecoration() {
    return new BoxDecoration(
        color: Colors.white,
        border: new Border.all(color: Colors.blue, width: 1.0),
        borderRadius: new BorderRadius.all(new Radius.circular(5)));
  }

  static GestureDetector _setListItemView(BuildContext context, String title,
      String description, StatefulWidget name) {
    return new GestureDetector(
      child: new Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.all(5),
        decoration: _setListItemDecoration(),
        child: new Flex(  //之前直接用row+column文字过长会出现内容显示不下的错误，
          // 因为row+column都是大小随着内容的增加增加的，除非设置固定大小，但是大小又不好算，所以用flex+Expanded来
          // 实现，可以用flex: 1去占剩下的空间，然后刚好把文字放进去
          direction: Axis.horizontal,
          children: <Widget>[
            new Expanded(
              flex: 1,
              child: new Flex(
                crossAxisAlignment: CrossAxisAlignment.start,
                direction: Axis.vertical,
                children: <Widget>[
                  new Text(
                    title,
                    style: new TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black),
                  ),
                  new Text(
                    description,
                    style: new TextStyle(fontSize: 15, color: Colors.grey),
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.black,
            )
          ],
        ),
      ),
      onTap: () {
//        if(callBack ==null){
          Navigator.push(context,
              new MaterialPageRoute(builder: (BuildContext context) {
                return name;
              }));
//        }
//        else{
//          callBack.itemOnTap();
//        }
      },
    );
  }

  static Widget setCupertinoListItem(
      BuildContext context, String title, String description, Widget name) {
    return _setListItemView(context, title, description, name);
  }

  static Widget setMaterialListItem(
      BuildContext context, String title, String description, Widget name) {
    return _setListItemView(context, title, description,name);
  }
}
