import 'package:flutter_study/utils/title_utils.dart';
import 'package:flutter/material.dart';

class LearnListViewChildPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LearnListViewChildPage();
  }
}

class _LearnListViewChildPage extends State<LearnListViewChildPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommTitle.setMaterialAppBar(context, "ListView的子页面", null),
      body: const Text("这是ListView的子页面"),
    );
  }
}
