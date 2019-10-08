import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
class LearnJsonAnalysis extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _LearnJsonAnalysis();
  }
}
class _LearnJsonAnalysis extends State<LearnJsonAnalysis>{
  String jsonData='{"name": "John Smith","email": "john@example.com"}';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('JsonAnalysis'),
        leading: new GestureDetector(
          child: Icon(Icons.arrow_back_ios),
          onTap: (){
            Navigator.pop(context);
          },
        ),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text('json原数据'),
            new Divider(
              color: Colors.black,
              indent: 0.0,
            ),
            new Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 20.0),
              child:new Text(jsonData),
            ),
            new Divider(
              color: Colors.black,
              indent: 0.0,
            ),
            new Text('解析结果'),
          ],
        ),
      ),
    );
  }
}
