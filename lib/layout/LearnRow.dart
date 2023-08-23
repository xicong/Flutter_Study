import 'package:flutter/material.dart';
import '../utils/title_utils.dart';
import '../comm/page/CodePreview.dart';

class LearnRow extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LearnRow();
  }
}

class _LearnRow extends State<LearnRow> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: CommTitle.setMaterialAppBar(context, "Row",
          Callback(codeOnTap: () {
        CodePreview.go(context, "Row", "lib/layout/LearnRow.dart");
      })),
      body: Row(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.all(10),
            color: Colors.blue,
            width: 50.0,
            height: 50.0,
            child: const Text(
              "1",
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.all(10),
            color: Colors.blue,
            width: 50.0,
            height: 50.0,
            child: const Text(
              "1",
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.all(10),
            color: Colors.blue,
            width: 50.0,
            height: 50.0,
            child: const Text(
              "1",
            ),
          ),
        ],
      ),
    );
  }
}
