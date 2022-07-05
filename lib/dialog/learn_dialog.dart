import 'package:flutter_study/callback/PageStateCallBack.dart';

import '../utils/page_status_weight_utils.dart';
import '../main.dart';
import 'package:flutter/material.dart';
import '../dialog/learn_about_dialog.dart';
import '../dialog/LearnAlertDialog.dart';
import '../dialog/LearnCupertinoAlertDialog.dart';
import '../dialog/LearnCupertinoFullscreenDialogTransition.dart';
import '../dialog/LearnDropdownButton.dart';
import '../dialog/LearnDialogBottomShow.dart';
import '../utils/listitem_utils.dart';
import '../utils/title_utils.dart';
import '../dialog/learn_simple_dialog.dart';

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
    return Scaffold(
        appBar: CommTitle.setMaterialAppBar(context, "各种Dialog", null),
        body: PageStatusWeight()
            .showRequestStatus(PageStateCallBack(asynchronousTasks: () {
          return initData();
        }, asynchronousResults: (data) {
          return showResultWeight(data);
        })));
  }

  Widget showResultWeight(data) {
    var mData = data as List<MainEntity>;
    return ListView.builder(
        itemCount: mData.length,
        itemBuilder: (context, index) {
          return CommListItem.setMaterialListItem(context, mData[index].name,
              mData[index].description, mData[index].widget);
        });
  }

  Future<List<MainEntity>> initData() {
    return Future<List<MainEntity>>(() {
      return [
        MainEntity(
            name: "AboutDialog",
            description: "一个关于App的弹窗",
            widget: LearnAboutDialog()),
        MainEntity(
            name: "AlertDialog",
            description: "一个操作确认提示对话框",
            widget: LearnAlertDialog()),
        MainEntity(
            name: "SimpleDialog",
            description: "一个可供选择的对话框",
            widget: LearnSimpleDialog()),
        MainEntity(
            name: "DialogBottom",
            description: "一个用来向用户传递信息的弹出窗",
            widget: LearnDialogBottomShow()),
        MainEntity(
            name: "DropdownButton",
            description: "一个用于向用户传递信息的弹出层",
            widget: LearnDropdownButton()),
        MainEntity(
            name: "CupertinoAlertDialog",
            description: "一个ios风格的操作确认提示对话框",
            widget: LearnCupertinoAlertDialog()),
        MainEntity(
            name: "CupertinoFullscreenDialogTransition",
            description: "一个ios全屏的对话框",
            widget: LearnCupertinoFullscreenDialogTransition()),
      ];
    });
  }
}
