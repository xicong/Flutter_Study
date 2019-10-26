import 'package:flutter/material.dart';
import 'package:flutterdemo/comm/CommListItem.dart';
import 'package:flutterdemo/comm/CommTitle.dart';
import 'package:flutterdemo/themes/material/LearnMaterialAccentColor.dart';
import 'package:flutterdemo/themes/material/LearnMaterialColor.dart';
import 'package:flutterdemo/themes/material/LearnMaterialButton.dart';
import 'package:flutterdemo/themes/material/LearnMaterialPageRoute.dart';
import 'package:flutterdemo/themes/material/LearnMergeableMaterialItem.dart';

class LearnMaterialApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _LearnMaterialApp();
  }
}

class _LearnMaterialApp extends State<LearnMaterialApp> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: CommTitle.setMaterialAppBar(context, "MaterialApp"),
        body: new ListView(
          children: <Widget>[
            CommListItem.setMaterialListItem(context, "MaterialColor",
                "定义单色以及有10中色调的色样", new LearnMaterialColor()),
            CommListItem.setMaterialListItem(context, "MaterialButton",
                "用于构建一个依赖于ButtonThem和Theme的按钮", new LearnMaterialButton()),
            CommListItem.setMaterialListItem(context, "MaterialPageRoute",
                "页面跳转携带参数替换整个屏幕的页面路由", new LearnMaterialPageRoute()),
            CommListItem.setMaterialListItem(context, "MaterialAccentColor",
                "用来定义单一带强色调，以及四种色调带色系", new LearnMaterialAccentColor()),
            CommListItem.setMaterialListItem(context, "MergeableMaterialItem",
                "MaterialSlice 和 MaterialGap的基本类型", new LearnMergeableMaterialItem()),
          ],
        ));
  }
}
