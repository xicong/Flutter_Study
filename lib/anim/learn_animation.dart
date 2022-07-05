import 'package:flutter/material.dart';
import '../anim/LearnAnim.dart';
import '../anim/LearnAnimDisplacement.dart';
import '../anim/LearnAnimRotate.dart';
import '../utils/listitem_utils.dart';
import '../utils/title_utils.dart';

//各种动画
class LearnAnimation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LearnAnimation();
  }
}

class _LearnAnimation extends State<LearnAnimation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommTitle.setMaterialAppBar(context, "各种动画", null),
      body: ListView(
        children: <Widget>[
          CommListItem.setMaterialListItem(
              context, "Anim", "一个图片放大的动画", LearnAnim()),
          CommListItem.setMaterialListItem(
              context, "AnimRotate", "", LearnAnimRotate()),
          CommListItem.setMaterialListItem(context, "AnimDisplacement",
              "一个位移动画", LearnAnimDisplacement()),
        ],
      ),
    );
  }
}
