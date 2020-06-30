import 'package:flutter/material.dart';
import 'package:Flutter_Study/dialog/LearnAboutDialog.dart';
import 'package:Flutter_Study/dialog/LearnAlertDialog.dart';
import 'package:Flutter_Study/dialog/LearnCupertinoAlertDialog.dart';
import 'package:Flutter_Study/dialog/LearnCupertinoFullscreenDialogTransition.dart';
import 'package:Flutter_Study/dialog/LearnDropdownButton.dart';
import 'package:Flutter_Study/dialog/LearnDialogBottomShow.dart';
import 'package:Flutter_Study/comm/CommListItem.dart';
import 'package:Flutter_Study/comm/CommTitle.dart';
import 'package:Flutter_Study/dialog/LearnSimpleDialog.dart';

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
          CommListItem.setMaterialListItem(context, "AboutDialog",
              "一个关于App的弹窗。", new LearnAboutDialog()),
          CommListItem.setMaterialListItem(context, "AlertDialog",
              "一个操作确认提示对话框", new LearnAlertDialog()),
          CommListItem.setMaterialListItem(context, "SimpleDialog",
              "一个可供选择的对话框", new LearnSimpleDialog()),
          CommListItem.setMaterialListItem(
              context, "DialogBottom", "一个用来向用户传递信息的弹出窗", new LearnDialogBottomShow()),
          CommListItem.setMaterialListItem(context, "DropdownButton",
              "一个用于向用户传递信息的弹出层。", new LearnDropdownButton()),
          CommListItem.setMaterialListItem(context, "CupertinoAlertDialog",
              "一个ios风格的操作确认提示对话框", new LearnCupertinoAlertDialog()),
          CommListItem.setMaterialListItem(context, "CupertinoFullscreenDialogTransition",
              "一个ios全屏的对话框", new LearnCupertinoFullscreenDialogTransition()),
        ],
      ),
    );
  }
}