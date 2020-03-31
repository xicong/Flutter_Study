import 'package:flutter/material.dart';
import 'package:flutterdemo/comm/CommTitle.dart';
import 'package:flutterdemo/commpage/CodePreview.dart';

class LearnStack extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _LearnStack();
  }
}

class _LearnStack extends State<LearnStack> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: CommTitle.setMaterialAppBar(context, "Stack",
          new Callback(codeOnTap: () {
        CodePreview.go(context, "Stack", "lib/layout/LearnStack.dart");
      })),
      body: new Stack(
        alignment: AlignmentDirectional.center, //内容对齐方式
        fit: StackFit.loose,
        children: <Widget>[
          new Container(
            width: 150.0,
            height: 100.0,
            decoration: new BoxDecoration(color: Colors.blue),
          ),
          new Container(
            width: 120.0,
            height: 80.0,
            decoration: new BoxDecoration(color: Colors.red),
          )
        ],
      ),
    );
  }
}
