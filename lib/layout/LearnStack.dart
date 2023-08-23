import 'package:flutter/material.dart';
import '../utils/title_utils.dart';
import '../comm/page/CodePreview.dart';

class LearnStack extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LearnStack();
  }
}

class _LearnStack extends State<LearnStack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommTitle.setMaterialAppBar(context, "Stack",
          Callback(codeOnTap: () {
        CodePreview.go(context, "Stack", "lib/layout/LearnStack.dart");
      })),
      body: Stack(
        alignment: AlignmentDirectional.center, //内容对齐方式
        fit: StackFit.loose,
        children: <Widget>[
          Container(
            width: 150.0,
            height: 100.0,
            decoration: const BoxDecoration(color: Colors.blue),
          ),
          Container(
            width: 120.0,
            height: 80.0,
            decoration: const BoxDecoration(color: Colors.red),
          )
        ],
      ),
    );
  }
}
