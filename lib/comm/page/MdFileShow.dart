import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import '../CommTitle.dart';
import '../page_status_weight.dart';

class DartSet extends StatefulWidget {
  static go(BuildContext context, String title, String mdFilePath) {
    Navigator.push(context,
        new MaterialPageRoute(builder: (BuildContext context) {
      return new DartSet(
        title: title,
        mdFilePath: mdFilePath,
      );
    }));
  }

  String title; //页面标题
  String mdFilePath; //md文件的地址
  DartSet({this.title, this.mdFilePath});

  @override
  State<StatefulWidget> createState() {
    return new _DartSet();
  }
}

class _DartSet extends State<DartSet> {
  Widget showDataWeight(data) {
    return new Container(
      child: new Markdown(
        data: data == null ? "数据获取出错，收到的地址为${widget.mdFilePath}" : data,
      ),
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.all(10),
      decoration: new BoxDecoration(
          color: Colors.white,
          border: new Border.all(width: 1, color: Colors.blue),
          borderRadius: new BorderRadius.all(Radius.circular(25))),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: CommTitle.setMaterialAppBar(context, widget.title, null),
        body: PageStatusWeight()
            .showRequestStatus(CallBack(asynchronousTasks: () {
          return DefaultAssetBundle.of(context).loadString(widget.mdFilePath);
        }, asynchronousResults: (data) {
          return showDataWeight(data);
        })),
      ),
    );
  }
}
