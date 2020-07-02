import '../comm/page/CodePreview.dart';
import 'package:flutter/material.dart';
import '../comm/CommTitle.dart';
import '../utils/ToastUtils.dart';

class LearnSimpleDialog extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _LearnSimpleDialog();
  }
}

class _LearnSimpleDialog extends State<LearnSimpleDialog> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
          appBar: CommTitle.setMaterialAppBar(context, "SimpleDialog",
              new Callback(codeOnTap: () {
            CodePreview.go(
                context, "SimpleDialog", "lib/dialog/LearnSimpleDialog.dart");
          })),
          body: new ListView(
            children: <Widget>[
              new GestureDetector(
                onTap: () {
                  showDialog(
                      context: context,
                      barrierDismissible: true, //点击外面是否可以关闭
                      builder: (context) {
                        return new SimpleDialog(
                          shape: new RoundedRectangleBorder(
                              borderRadius:
                                  new BorderRadius.all(Radius.circular(10))),
                          title: new Text("title"),
                          children: <Widget>[
                            new ListTile(
                              leading: new Icon(Icons.radio_button_unchecked),
                              title: new Text("男"),
                              onTap: (){
                                Navigator.pop(context);
                                ToastUtils.show("男");
                              },
                            ),
                            new ListTile(
                              leading: new Icon(Icons.radio_button_unchecked),
                              title: new Text("女"),
                              onTap: (){
                                Navigator.pop(context);
                                ToastUtils.show("女");
                              },
                            ),
                            new ListTile(
                              leading: new Icon(Icons.radio_button_unchecked),
                              title: new Text("未知"),
                              onTap: (){
                                Navigator.pop(context);
                                ToastUtils.show("未知");
                              },
                            ),
                          ],
                        );
                      });
                },
                child: new Container(
                  alignment: Alignment.center,
                  child: new Text(
                    "SimpleDialog",
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
