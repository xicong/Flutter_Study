import 'package:flutter/material.dart';
import '../comm/CommTitle.dart';
import '../comm/page/CodePreview.dart';

class LearnRow extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _LearnRow();
  }
}

class _LearnRow extends State<LearnRow>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: CommTitle.setMaterialAppBar(context, "Row", new Callback(
        codeOnTap: (){
          CodePreview.go(context, "Row", "lib/layout/LearnRow.dart");
        }
      )),
      body: new Row(
        children: <Widget>[
          new Container(
            alignment: Alignment.center,
            margin: EdgeInsets.all(10),
            child: new Text("1",),
            color: Colors.blue,
            width: 50.0,
            height: 50.0,
          ),
          new Container(
            alignment: Alignment.center,
            margin: EdgeInsets.all(10),
            child: new Text("1",),
            color: Colors.blue,
            width: 50.0,
            height: 50.0,
          ),
          new Container(
            alignment: Alignment.center,
            margin: EdgeInsets.all(10),
            child: new Text("1",),
            color: Colors.blue,
            width: 50.0,
            height: 50.0,
          ),
        ],
      ),
    );
  }

}