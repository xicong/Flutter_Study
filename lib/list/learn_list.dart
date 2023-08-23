import 'package:flutter_study/callback/PageStateCallBack.dart';
import 'package:flutter_study/utils/page_status_weight_utils.dart';
import 'package:flutter/material.dart';
import '../list/LearnExpansionPanelList.dart';
import '../list/LearnGridView.dart';
import '../list/listview/LearnListView.dart';
import '../list/LearnTable.dart';
import '../utils/listitem_utils.dart';
import '../utils/title_utils.dart';
import '../main.dart';

//各种列表
class LearnList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LearnList();
  }
}

class _LearnList extends State<LearnList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommTitle.setMaterialAppBar(context, "各种列表", null),
      body:
          PageStatusWeight().showRequestStatus(PageStateCallBack(asynchronousTasks: () {
        return initData();
      }, asynchronousResults: (data) {
        return showResultWight(data);
      })),
    );
  }

  Widget showResultWight(data) {
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
            name: "ListView", description: "常见的滚动列表", widget: const LearnListView()),
        MainEntity(
            name: "ExpansionPanelList",
            description: "类似qq分组带展开折叠功能的列表",
            widget: LearnExpansionPanelList()),
        MainEntity(
            name: "GridView",
            description: "可以占满给出空间区域的滚动列表",
            widget: LearnGridView()),
        MainEntity(
            name: "Table", description: "一个可以显示表格控件的布局", widget: LearnTable()),
      ];
    });
  }
}
