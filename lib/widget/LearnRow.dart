import 'package:flutter/material.dart';

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
      appBar: new AppBar(
        title: new Text('Row'),
        leading: new GestureDetector(
          child: Icon(Icons.arrow_back_ios),
          onTap: (){
            Navigator.pop(context);
          },
        ),
      ),
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