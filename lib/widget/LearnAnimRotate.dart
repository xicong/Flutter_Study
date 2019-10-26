import 'package:flutter/material.dart';

class LearnAnimRotate extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new _LearnAnimRotate();
  }
}
class _LearnAnimRotate extends State<LearnAnimRotate>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('AnimRotate'),
        leading: new GestureDetector(
          child: Icon(Icons.arrow_back_ios),
          onTap: (){
            Navigator.pop(context);
          },
        ),
      ),
//      body: new Center(
//        child: new RotationTransition(
////          turns: null,
//        ),
//      ),
    );
  }
}