import 'package:flutter/material.dart';
import '../utils/title_utils.dart';

class LearnAnimRotate extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _LearnAnimRotate();
  }
}

class _LearnAnimRotate extends State<LearnAnimRotate> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: CommTitle.setMaterialAppBar(context, "AnimRotate", null),
//      body: new Center(
//        child: new RotationTransition(
////          turns: null,
//        ),
//      ),
    );
  }
}
