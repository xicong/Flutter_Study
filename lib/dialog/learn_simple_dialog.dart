import 'package:flutter_study/utils/toast_utils.dart';

import '../comm/page/CodePreview.dart';
import 'package:flutter/material.dart';
import '../utils/title_utils.dart';

class LearnSimpleDialog extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LearnSimpleDialog();
  }
}

class _LearnSimpleDialog extends State<LearnSimpleDialog> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: CommTitle.setMaterialAppBar(context, "SimpleDialog",
              Callback(codeOnTap: () {
            CodePreview.go(
                context, "SimpleDialog", "lib/dialog/learn_simple_dialog.dart");
          })),
          body: ListView(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  showDialog(
                      context: context,
                      barrierDismissible: true, //点击外面是否可以关闭
                      builder: (context) {
                        return SimpleDialog(
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          title: const Text("title"),
                          children: <Widget>[
                            ListTile(
                              leading: const Icon(Icons.radio_button_unchecked),
                              title: const Text("男"),
                              onTap: () {
                                Navigator.pop(context);
                                showToast(context, "男");
                              },
                            ),
                            ListTile(
                              leading: const Icon(Icons.radio_button_unchecked),
                              title: const Text("女"),
                              onTap: () {
                                Navigator.pop(context);
                                showToast(context, "女");
                              },
                            ),
                            ListTile(
                              leading: const Icon(Icons.radio_button_unchecked),
                              title: const Text("未知"),
                              onTap: () {
                                Navigator.pop(context);
                                showToast(context,"未知");
                              },
                            ),
                          ],
                        );
                      });
                },
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    "SimpleDialog",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  margin: const EdgeInsets.all(15),
                  padding: const EdgeInsets.all(15),
                ),
              ),
            ],
          )),
    );
  }
}
