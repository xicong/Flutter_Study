//导入dart
import 'package:Flutter_Study/comm/page_status_weight.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:Flutter_Study/comm/CommTitle.dart';

/// 显示代码的公共页面
class CodePreview extends StatefulWidget {

  //和带tab结合使用使用让其打开在tab上面
  static tabGo(BuildContext context, String title, String codeFilePath) {
    Navigator.of(context,rootNavigator: true).push(
        new MaterialPageRoute(
            maintainState: false,
            builder: (BuildContext context) {
              return new CodePreview(
                title: title,
                codeFilePath: codeFilePath,
              );
            }));
  }
  
  static go(BuildContext context, String title, String codeFilePath) {
    Navigator.push(context,
        new MaterialPageRoute(
            builder: (BuildContext context) {
      return new CodePreview(
        title: title,
        codeFilePath: codeFilePath,
      );
    }));
  }

  //代码文件的路径
  String codeFilePath;

  //代码学习的内容名称
  String title;

  CodePreview({this.codeFilePath, this.title});

  @override
  State<StatefulWidget> createState() {
    return new _CodePreviewWidget();
  }
}

class _CodePreviewWidget extends State<CodePreview> {
  
  Widget showDataWidget(dynamic data){
    var path = data as String;
    return new Container(
      decoration: new BoxDecoration(
          border: new Border.all(
            width: 1,
            color: Colors.blue,
          ),
          borderRadius: new BorderRadius.all(
              Radius.circular(25))),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(5),
      child: new CustomScrollView(
        shrinkWrap: true,
        slivers: <Widget>[
          new SliverPadding(
            padding: const EdgeInsets.all(15.0),
            sliver: new SliverList(
              delegate: new SliverChildListDelegate(
                <Widget>[
                  new Text(
                    path == null
                        ? "数据错误，收到的路径地址为${widget.codeFilePath}"
                        : path,
                    style: new TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.normal
                    ),
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
    return new MaterialApp(
      //MaterialApp  必须有home不然报错
      home: new Scaffold(
        appBar: CommTitle.setMaterialAppBar(context, widget.title, null),
        backgroundColor: Colors.white,
        body: PageStatusWeight().showRequestStatus(CallBack(
          requestParsing: (){
            return DefaultAssetBundle.of(context).loadString(widget.codeFilePath);
          },
          showSuccessfulRequestWeight: (data){
            return showDataWidget(data);
          }
        )),
      ),
    );
  }
  
}
