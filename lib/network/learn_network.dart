import 'package:flutter_study/callback/PageStateCallBack.dart';

import '../utils/page_status_weight_utils.dart';
import '../main.dart';
import 'package:flutter/material.dart';
import '../network/LearnHttp.dart';
import '../network/LearnJsonAnalysis.dart';
import '../utils/listitem_utils.dart';
import '../utils/title_utils.dart';

//各种动画
class LearnNetwork extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LearnNetwork();
  }
}

class _LearnNetwork extends State<LearnNetwork> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommTitle.setMaterialAppBar(context, "网络", null),
      body:
          PageStatusWeight().showRequestStatus(PageStateCallBack(asynchronousTasks: () {
        return initData();
      }, asynchronousResults: (data) {
        return showReslutWight(data);
      })),
    );
  }

  Future<List<MainEntity>> initData() {
    return Future<List<MainEntity>>(() {
      return [
        MainEntity(
            name: "Http", description: "用于请求网络上的数据进行其交互", widget: LearnHttp()),
        MainEntity(
            name: "JsonAnalysis",
            description: "用以解析json结构的数据",
            widget: LearnJsonAnalysis()),
      ];
    });
  }

  Widget showReslutWight(data) {
    var mData = data as List<MainEntity>;
    return ListView.builder(
        itemCount: mData.length,
        itemBuilder: (context, index) {
          return CommListItem.setMaterialListItem(context, mData[index].name,
              mData[index].description, mData[index].widget);
        });
  }
}
