import 'package:Flutter_Study/utils/title_utils.dart';
import 'package:flutter/material.dart';

class LearnListViewChildPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _LearnListViewChildPage();
  }
}

class _LearnListViewChildPage extends State<LearnListViewChildPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: CommTitle.setMaterialAppBar(context, "ListView的子页面", null),
      body: new Text("这是ListView的子页面"),
    );
  }
}
