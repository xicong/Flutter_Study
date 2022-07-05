//导入dart
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_study/callback/PageStateCallBack.dart';

import '../../utils/title_utils.dart';
import '../../utils/page_status_weight_utils.dart';

/// 显示代码的公共页面
class CodePreview extends StatefulWidget {
  //和带tab结合使用使用让其打开在tab上面
  static tabGo(BuildContext context, String title, String codeFilePath) {
    Navigator.of(context, rootNavigator: true).push(MaterialPageRoute(
        maintainState: false,
        builder: (BuildContext context) {
          return CodePreview(
            title: title,
            codeFilePath: codeFilePath,
          );
        }));
  }

  static go(BuildContext context, String title, String codeFilePath) {
    Navigator.push(context,
        MaterialPageRoute(builder: (BuildContext context) {
      return CodePreview(
        title: title,
        codeFilePath: codeFilePath,
      );
    }));
  }

  //代码文件的路径
  String codeFilePath;

  //代码学习的内容名称
  String title;

  CodePreview({required this.codeFilePath, required this.title});

  @override
  State<StatefulWidget> createState() {
    return _CodePreviewWidget();
  }
}

class _CodePreviewWidget extends State<CodePreview> {
  Widget showDataWidget(dynamic data) {
    var path = data as String;
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: Colors.blue,
          ),
          borderRadius: BorderRadius.all(Radius.circular(25))),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(5),
      child: CustomScrollView(
        shrinkWrap: true,
        slivers: <Widget>[
          SliverPadding(
            padding: const EdgeInsets.all(15.0),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                <Widget>[
                  Text(
                    path == null ? "数据错误，收到的路径地址为${widget.codeFilePath}" : path,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //MaterialApp  必须有home不然报错
      home: Scaffold(
        appBar: CommTitle.setMaterialAppBar(context, widget.title, null),
        backgroundColor: Colors.white,
        body: PageStatusWeight()
            .showRequestStatus(PageStateCallBack(asynchronousTasks: () {
          return DefaultAssetBundle.of(context).loadString(widget.codeFilePath);
        }, asynchronousResults: (data) {
          return showDataWidget(data);
        })),
      ),
    );
  }
}
