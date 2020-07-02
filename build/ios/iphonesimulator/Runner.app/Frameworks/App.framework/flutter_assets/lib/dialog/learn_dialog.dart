import 'package:Flutter_Study/comm/page_status_weight.dart';
import 'package:Flutter_Study/main.dart';
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
class LearnDialog extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LearnDialog();
  }
}

class _LearnDialog extends State<LearnDialog> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: CommTitle.setMaterialAppBar(context, "各种Dialog", null),
      body: PageStatusWeight().showRequestStatus(CallBack(
          asynchronousTasks: () {
            return initData();
          },
          asynchronousResults: (data) {
            return showResultWeight(data);
          }
      ))
    );
  }

  Widget showResultWeight(data) {
    var mData = data as List<MainEntity>;
    return new ListView.builder(
        itemCount: mData.length,
        itemBuilder: (context, index) {
          return CommListItem.setMaterialListItem(context, mData[index].name,
              mData[index].description, mData[index].widget);
        });
  }

  Future<List<MainEntity>> initData() {
    return Future<List<MainEntity>>(() {
      return [
        MainEntity(name: "AboutDialog",
            description: "一个关于App的弹窗",
            widget: LearnAboutDialog()),
        MainEntity(name: "AlertDialog",
            description: "一个操作确认提示对话框",
            widget: LearnAlertDialog()),
        MainEntity(name: "SimpleDialog",
            description: "一个可供选择的对话框",
            widget: LearnSimpleDialog()),
        MainEntity(name: "DialogBottom",
            description: "一个用来向用户传递信息的弹出窗",
            widget: LearnDialogBottomShow()),
        MainEntity(name: "DropdownButton",
            description: "一个用于向用户传递信息的弹出层",
            widget: LearnDropdownButton()),
        MainEntity(name: "CupertinoAlertDialog",
            description: "一个ios风格的操作确认提示对话框",
            widget: LearnCupertinoAlertDialog()),
        MainEntity(name: "CupertinoFullscreenDialogTransition",
            description: "一个ios全屏的对话框",
            widget: LearnCupertinoFullscreenDialogTransition()),
      ];
    });
  }

}