import 'dart:convert';

import 'package:Flutter_Study/comm/page_status_weight.dart';
import 'package:Flutter_Study/network/json_parsing_entity.dart';
import 'package:flutter/material.dart';


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
            new Container(
              decoration: new BoxDecoration(
                color: Colors.white,
                border: new Border.all(color: Colors.blue,width: 2.0),
                borderRadius: new BorderRadius.all(Radius.circular(10))
              ),
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.all(10.0),
              child: PageStatusWeight().showRequestStatus(CallBack(
                  asynchronousTasks: (){
                  return parsingData();
                },
                  asynchronousResults:(data){
                  var mData = data as JsonParsingEntity;
                  return new Column(
                    children: <Widget>[
                      new Text("姓名: ${mData.name}"),
                      new Text("邮箱: ${mData.email}")
                    ],
                  );
                }
              )),
            )
          ],
        ),
      ),
    );
  }

  Future<JsonParsingEntity> parsingData(){
    return  Future<JsonParsingEntity>((){
      return new JsonParsingEntity().fromJson(json.decode(jsonData));
    });
  }
}
