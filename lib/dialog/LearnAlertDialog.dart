import '../comm/page/CodePreview.dart';
import 'package:flutter/material.dart';
import '../utils/title_utils.dart';

class LearnAlertDialog extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LearnAlertDialog();
  }
}

class _LearnAlertDialog extends State<LearnAlertDialog> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: CommTitle.setMaterialAppBar(context, "AlertDialog",
              Callback(codeOnTap: () {
            CodePreview.go(
                context, "AlertDialog", "lib/dialog/LearnAlertDialog.dart");
          })),
          body: ListView(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  showDialog(
                      context: context,
                      barrierDismissible: true, //点击外面是否可以关闭
                      builder: (context) {
                        return AlertDialog(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          content: Text("AlertDialog 是一个用于向用户传递信息的弹出层。"),
                          title: Text("title"),
//                      titlePadding: EdgeInsets.all(20),
                          titleTextStyle: TextStyle(
                            fontSize: 20,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                          contentTextStyle: TextStyle(
                            color: Colors.blue,
                            fontSize: 12,
                          ),
                          actions: <Widget>[
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              child: Container(
                                padding: EdgeInsets.only(
                                    left: 10, right: 10, top: 3, bottom: 3),
                                margin: EdgeInsets.only(
                                    left: 5, right: 5, bottom: 15),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1, color: Colors.blue),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(5))),
                                child: Text(
                                  "取消",
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.blue,
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              child: Container(
                                padding: EdgeInsets.only(
                                    left: 10, right: 10, top: 3, bottom: 3),
                                margin: EdgeInsets.only(
                                    left: 5, right: 5, bottom: 15),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1, color: Colors.blue),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(5))),
                                child: Text(
                                  "确定",
                                  style: TextStyle(
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
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    "AlertDialog",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  decoration: BoxDecoration(
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
