import 'package:flutter/material.dart';
import '../utils/title_utils.dart';

class LearnAnimDisplacement extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LearnAnimDisplacement();
  }
}

class _LearnAnimDisplacement extends State<LearnAnimDisplacement> {
  double anim = 200.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommTitle.setMaterialAppBar(context, "AnimDisplacement", null),
      body: Column(
        children: <Widget>[
          AnimatedContainer(
            duration: Duration(milliseconds: 3000),
            curve: Curves.linear, //Curves.bounceOut弹跳   Curves.linear线性匀速
            margin: EdgeInsets.only(left: anim, top: anim),
            child: Container(
              width: 200.0,
              height: 50.0,
              color: Colors.black,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          anim = anim == 200.0 ? 0.0 : 200.0;
        });
      }),
    );
  }
}
