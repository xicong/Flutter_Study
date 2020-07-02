import 'package:Flutter_Study/comm/page/CodePreview.dart';
import 'package:flutter/material.dart';
import 'package:Flutter_Study/comm/CommTitle.dart';

class LearnAlertDialog extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _LearnAlertDialog();
  }
}

class _LearnAlertDialog extends State<LearnAlertDialog> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
          appBar: CommTitle.setMaterialAppBar(context, "AlertDialog",
              new Callback(codeOnTap: () {
            CodePreview.go(
                context, "AlertDialog", "lib/dialog/LearnAlertDialog.dart");
          })),
          body: new ListView(
            children: <Widget>[
              new GestureDetector(
                onTap: () {
                  showDialog(
                      context: context,
                      barrierDismissible: true, //点击外面是否可以关闭
                      builder: (context) {
                        return new AlertDialog(
                          shape: new RoundedRectangleBorder(
                              borderRadius:
                                  new BorderRadius.all(Radius.circular(10))),
                          content: new Text("AlertDialog 是一个用于向用户传递信息的弹出层。"),
                          title: new Text("title"),
//                      titlePadding: EdgeInsets.all(20),
                          titleTextStyle: new TextStyle(
                            fontSize: 20,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                          contentTextStyle: new TextStyle(
                            color: Colors.blue,
                            fontSize: 12,
                          ),
                          actions: <Widget>[
                            new GestureDetector(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              child: new Container(
                                padding: EdgeInsets.only(
                                    left: 10, right: 10, top: 3, bottom: 3),
                                margin: EdgeInsets.only(
                                    left: 5, right: 5, bottom: 15),
                                decoration: new BoxDecoration(
                                    border: new Border.all(
                                        width: 1, color: Colors.blue),
                                    borderRadius: new BorderRadius.all(
                                        new Radius.circular(5))),
                                child: new Text(
                                  "取消",
                                  style: new TextStyle(
                                    fontSize: 10,
                                    color: Colors.blue,
                                  ),
                                ),
                              ),
                            ),
                            new GestureDetector(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              child: new Container(
                                padding: EdgeInsets.only(
                                    left: 10, right: 10, top: 3, bottom: 3),
                                margin: EdgeInsets.only(
                                    left: 5, right: 5, bottom: 15),
                                decoration: new BoxDecoration(
                                    border: new Border.all(
                                        width: 1, color: Colors.blue),
                                    borderRadius: new BorderRadius.all(
                                        new Radius.circular(5))),
                                child: new Text(
                                  "确定",
                                  style: new TextStyle(
                                    fontSize: 10,
                                    color: Colors.blue,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      });
                },
                child: new Container(
                  alignment: Alignment.center,
                  child: new Text(
                    "AlertDialog",
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
