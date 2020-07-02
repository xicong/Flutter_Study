import 'package:Flutter_Study/comm/page/CodePreview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:Flutter_Study/comm/CommTitle.dart';

class LearnAboutDialog extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _LearnAboutDialog();
  }
}

class _LearnAboutDialog extends State<LearnAboutDialog> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
          appBar: CommTitle.setMaterialAppBar(context, "AboutDialog",
              new Callback(codeOnTap: () {
            CodePreview.go(
                context, "AboutDialog", "lib/dialog/LearnAboutDialog.dart");
          })),
          body: new ListView(
            children: <Widget>[
              new GestureDetector(
                onTap: () {
                  showDialog(
                      context: context,
                      barrierDismissible: true, //点击外面是否可以关闭
                      builder: (context) {
                        return new AboutDialog(
                          applicationIcon: Image.network(
                            "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1585653987208&di=c91f36f079f03bf679e879374eba8c9c&imgtype=0&src=http%3A%2F%2Fimg2.yiihuu.com%2Fupimg%2Fmanage%2F2015%2F09%2F15%2F14422855791647.jpg",
                            width: 80,
                            height: 80,
                            fit: BoxFit.cover,
                          ),
                          applicationName: "Flutter学习",
                          applicationVersion: "1.0.0.1.0",
                          applicationLegalese: "applicationLegalese",
                          children: <Widget>[
                            new Text("这里是一个自定义内容1"),
                            new Text("这里是一个自定义内容1"),
                          ],
                        );
                      });
                },
                child: new Container(
                  alignment: Alignment.center,
                  child: new Text(
                    "AboutDialog",
                    style: new TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  decoration: new BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  margin: EdgeInsets.all(15),
                  padding: EdgeInsets.all(15),
                ),
              ),
            ],
          )),
    );
  }
}
