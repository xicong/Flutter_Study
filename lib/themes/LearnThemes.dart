import 'package:flutter/material.dart';
import 'package:flutterdemo/comm/CommListItem.dart';
import 'package:flutterdemo/comm/CommTitle.dart';
import 'package:flutterdemo/themes/cupertino/LearnCupertinoApp.dart';
import 'package:flutterdemo/themes/material/LearnMaterialApp.dart';

//主题
class LearnThemes extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LearnThemes();
  }
}

class _LearnThemes extends State<LearnThemes> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: CommTitle.setMaterialAppBar(context, "Themes",null),
      body: new ListView(
        children: <Widget>[
          CommListItem.setMaterialListItem(context, "MaterialApp",
              "Android的Material设置风格", new LearnMaterialApp()),
          CommListItem.setMaterialListItem(context, "CupertinoApp",
              "ios的Cupertino设置风格", new LearnCupertinoApp()),
        ],
      ),
    );
  }
}
