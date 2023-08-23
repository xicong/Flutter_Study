import 'dart:convert';
import 'package:flutter_study/callback/PageStateCallBack.dart';
import 'package:flutter_study/utils/style_utils.dart';
import '../utils/page_status_weight_utils.dart';
import '../network/json_parsing_entity.dart';
import 'package:flutter/material.dart';

class LearnJsonAnalysis extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LearnJsonAnalysis();
  }
}

class _LearnJsonAnalysis extends State<LearnJsonAnalysis> {
  String jsonData = '{"name": "John Smith","email": "john@example.com"}';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('JsonAnalysis'),
        leading: GestureDetector(
          child: Icon(Icons.arrow_back_ios),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('json原数据'),
            Divider(
              color: Colors.black,
              indent: 0.0,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 20.0),
              child: Text(jsonData),
            ),
            Divider(
              color: Colors.black,
              indent: 0.0,
            ),
            Text('解析结果'),
            Container(
              decoration: StyleUtils.blueRadiusDecoration(),
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.all(10.0),
              child: PageStatusWeight()
                  .showRequestStatus(PageStateCallBack(asynchronousTasks: () {
                return parsingData();
              }, asynchronousResults: (data) {
                var mData = data as JsonParsingEntity;
                return Column(
                  children: <Widget>[
                    Text("姓名: ${mData.name}"),
                    Text("邮箱: ${mData.email}")
                  ],
                );
              })),
            )
          ],
        ),
      ),
    );
  }

  Future<JsonParsingEntity> parsingData() {
    return Future<JsonParsingEntity>(() {
      return JsonParsingEntity.fromJson(jsonDecode(jsonData));
    });
  }
}
