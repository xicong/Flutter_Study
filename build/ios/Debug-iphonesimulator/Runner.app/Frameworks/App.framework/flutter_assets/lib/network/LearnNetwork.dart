import 'package:flutter/material.dart';
import 'package:Flutter_Study/network/LearnHttp.dart';
import 'package:Flutter_Study/network/LearnJsonAnalysis.dart';
import 'package:Flutter_Study/comm/CommListItem.dart';
import 'package:Flutter_Study/comm/CommTitle.dart';

//各种动画
class LearnNetwork extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _LearnNetwork();
  }
}
class _LearnNetwork extends State<LearnNetwork>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: CommTitle.setMaterialAppBar(context, "网络",null),
      body: new ListView(
        children: <Widget>[
          CommListItem.setMaterialListItem(
              context, "Http", "用于请求网络上的数据进行其交互", new LearnHttp()),
          CommListItem.setMaterialListItem(context, "JsonAnalysis",
              "用以解析json结构的数据", new LearnJsonAnalysis()),
        ],
      ),
    );
  }
}