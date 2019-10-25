import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommListItem{

  static Widget setCupertinoListItem(BuildContext context,String title,String description,StatefulWidget name){
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

  static Widget setMaterialListItem(BuildContext context,String title,String description,StatefulWidget name){
    return new GestureDetector(
      child: new Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.all(5),
        decoration: new BoxDecoration(
            color: Colors.white,
            border: new Border.all(color: Colors.blue,width: 1.0),
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
                      color: Colors.black
                  ),
                ),
                new Text(description,
                  style: new TextStyle(
                      fontSize: 15,
                      color: Colors.grey
                  ),
                )
              ],
            ),
            Spacer(),
            Icon(Icons.arrow_forward_ios,color: Colors.black,)
          ],
        ),
      ),
      onTap: (){
        Navigator.push(context,
            new MaterialPageRoute(builder: (BuildContext context) {
              return name;
            }));
      },
    );
  }


}