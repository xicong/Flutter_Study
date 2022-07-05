import 'package:flutter/material.dart';
import '../utils/title_utils.dart';

class LearnAnimRotate extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LearnAnimRotate();
  }
}

class _LearnAnimRotate extends State<LearnAnimRotate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommTitle.setMaterialAppBar(context, "AnimRotate", null),
//      body: Center(
//        child: RotationTransition(
////          turns: null,
//        ),
//      ),
    );
  }
}
