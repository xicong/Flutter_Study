import 'package:Flutter_Study/comm/page/CodePreview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:Flutter_Study/comm/CommTitle.dart';
import 'package:Flutter_Study/utils/ToastUtils.dart';

class LearnCupertinoAlertDialog extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _LearnCupertinoAlertDialog();
  }
}

class _LearnCupertinoAlertDialog extends State<LearnCupertinoAlertDialog> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
          appBar: CommTitle.setMaterialAppBar(context, "LearnCupertinoAlertDialog",
              new Callback(codeOnTap: () {
            CodePreview.go(
                context, "AboutDialog", "lib/dialog/LearnCupertinoAlertDialog.dart");
          })),
          body: new ListView(
            children: <Widget>[
              new GestureDetector(
                onTap: () {
                  showDialog(
                      context: context,
                      barrierDismissible: true, //点击外面是否可以关闭
                      builder: (context) {
                        return new CupertinoAlertDialog(
                          title: new Text("title"),
                          content: new Text("content"),
                          actions: <Widget>[
                            new CupertinoDialogAction(
                                child: new Text("取消"),
                                onPressed: (){
                                  Navigator.pop(context);
                                  ToastUtils.show("取消");
                                },
                            ),
                            new CupertinoDialogAction(
                              child: new Text("确定"),
                              onPressed: (){
                                Navigator.pop(context);
                                ToastUtils.show("确定");
                              },
                            ),
                          ],
                        );
                      });
                },
                child: new Container(
                  alignment: Alignment.center,
                  child: new Text(
                    "LearnCupertinoAlertDialog",
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
