import 'package:flutter/material.dart';
import 'package:flutterdemo/dialog/LearnDropdownButton.dart';
import 'package:flutterdemo/dialog/LearnDialogBottomShow.dart';
import 'package:flutterdemo/comm/CommListItem.dart';
import 'package:flutterdemo/comm/CommTitle.dart';

//各种Dialog
class LearnDialog extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _LearnDialog();
  }
}
class _LearnDialog extends State<LearnDialog>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: CommTitle.setMaterialAppBar(context, "各种Dialog",null),
      body: new ListView(
        children: <Widget>[
          CommListItem.setMaterialListItem(
              context, "DialogBottom", "向用户传递信息的弹出窗", new LearnDialogBottomShow()),
          CommListItem.setMaterialListItem(context, "DropdownButton",
              "一个下载选择菜单的按钮", new LearnDropdownButton()),
        ],
      ),
    );
  }
}