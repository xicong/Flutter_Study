import '../comm/page/CodePreview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../utils/title_utils.dart';
import '../utils/toast_utils.dart';

class LearnCupertinoAlertDialog extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LearnCupertinoAlertDialog();
  }
}

class _LearnCupertinoAlertDialog extends State<LearnCupertinoAlertDialog> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: CommTitle.setMaterialAppBar(context, "LearnCupertinoAlertDialog",
              Callback(codeOnTap: () {
            CodePreview.go(
                context, "AboutDialog", "lib/dialog/LearnCupertinoAlertDialog.dart");
          })),
          body: ListView(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  showDialog(
                      context: context,
                      barrierDismissible: true, //点击外面是否可以关闭
                      builder: (context) {
                        return CupertinoAlertDialog(
                          title: Text("title"),
                          content: Text("content"),
                          actions: <Widget>[
                            CupertinoDialogAction(
                                child: Text("取消"),
                                onPressed: (){
                                  Navigator.pop(context);
                                  showToast(context, "取消");
                                },
                            ),
                            CupertinoDialogAction(
                              child: Text("确定"),
                              onPressed: (){
                                Navigator.pop(context);
                                showToast(context, "确定");
                              },
                            ),
                          ],
                        );
                      });
                },
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    "LearnCupertinoAlertDialog",
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
