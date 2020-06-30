import 'package:flutter/material.dart';
import 'package:Flutter_Study/comm/CommTitle.dart';
class LearnAnimDisplacement extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new _LearnAnimDisplacement();
  }
}
class _LearnAnimDisplacement extends State<LearnAnimDisplacement>{
  double anim=200.0;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: CommTitle.setMaterialAppBar(context, "AnimDisplacement",null),
      body: new Column(
        children: <Widget>[
          new AnimatedContainer(
            duration: new Duration(milliseconds: 3000),
            curve: Curves.linear,//Curves.bounceOut弹跳   Curves.linear线性匀速
            margin: EdgeInsets.only(left: anim,top: anim),
            child: new Container(
              width: 200.0,
              height: 50.0,
              color: Colors.black,
            ),
          ),
        ],
      ),
      floatingActionButton: new FloatingActionButton(
          onPressed: (){
            setState(() {
              anim=anim==200.0?0.0:200.0;
            });
          }
      ),
    );
  }
}