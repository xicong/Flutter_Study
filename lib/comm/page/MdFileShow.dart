import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import '../../callback/PageStateCallBack.dart';
import '../../utils/title_utils.dart';
import '../../utils/page_status_weight_utils.dart';

class DartSet extends StatefulWidget {
  static go(BuildContext context, String title, String mdFilePath) {
    Navigator.push(context,
        MaterialPageRoute(builder: (BuildContext context) {
      return DartSet(
        title: title,
        mdFilePath: mdFilePath,
      );
    }));
  }

  String title; //页面标题
  String mdFilePath; //md文件的地址
  DartSet({required this.title, required this.mdFilePath});

  @override
  State<StatefulWidget> createState() {
    return _DartSet();
  }
}

class _DartSet extends State<DartSet> {
  Widget showDataWeight(data) {
    return Container(
      child: Markdown(
        data: data == null ? "数据获取出错，收到的地址为${widget.mdFilePath}" : data,
      ),
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(width: 1, color: Colors.blue),
          borderRadius: BorderRadius.all(Radius.circular(25))),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: CommTitle.setMaterialAppBar(context, widget.title, null),
        body: PageStatusWeight()
            .showRequestStatus(PageStateCallBack(asynchronousTasks: () {
          return DefaultAssetBundle.of(context).loadString(widget.mdFilePath);
        }, asynchronousResults: (data) {
          return showDataWeight(data);
        })),
      ),
    );
  }
}
