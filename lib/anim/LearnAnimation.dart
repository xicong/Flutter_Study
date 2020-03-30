import 'package:flutter/material.dart';
import 'package:flutterdemo/anim/LearnAnim.dart';
import 'package:flutterdemo/anim/LearnAnimDisplacement.dart';
import 'package:flutterdemo/anim/LearnAnimRotate.dart';
import 'package:flutterdemo/comm/CommListItem.dart';
import 'package:flutterdemo/comm/CommTitle.dart';

//各种动画
class LearnAnimation extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _LearnAnimation();
  }
}
class _LearnAnimation extends State<LearnAnimation>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: CommTitle.setMaterialAppBar(context, "各种动画",null),
      body: new ListView(
        children: <Widget>[
          CommListItem.setMaterialListItem(
              context, "Anim", "一个图片放大的动画", new LearnAnim()),
          CommListItem.setMaterialListItem(
              context, "AnimRotate", "", new LearnAnimRotate()),
          CommListItem.setMaterialListItem(context, "AnimDisplacement",
              "一个位移动画", new LearnAnimDisplacement()),
        ],
      ),
    );
  }
}