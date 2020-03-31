import 'package:flutter/material.dart';
import 'package:flutterdemo/comm/CommListItem.dart';
import 'package:flutterdemo/comm/CommTitle.dart';
class LearnMaterialColor extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new _LearnMaterialColor();
  }
}
class _LearnMaterialColor extends State<LearnMaterialColor>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: CommTitle.setMaterialAppBar(context, "MaterialColor",null),
      body: new ListView.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context, int index){
            Color bgColor=Colors.blue;
            switch(index){
              case 0:
                bgColor=Colors.grey;
                break;
              case 1:
                bgColor=Colors.red;
                break;
              case 2:
                bgColor=Colors.green;
                break;
              case 3:
                bgColor=Colors.black;
                break;
              case 4:
                bgColor=Colors.yellow;
                break;
            }
            return new Container(
              decoration: new BoxDecoration(
                color: bgColor,
                borderRadius: new BorderRadius.all(new Radius.circular(10)),
              ),
              padding: EdgeInsets.only(top: 20,bottom: 20),
              margin: EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 10),
              alignment: Alignment.center,
              child: new Text('$index',
                style: new TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),),
            );
          }
      ),
    );
  }
}