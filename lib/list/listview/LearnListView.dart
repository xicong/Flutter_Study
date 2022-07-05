import 'package:flutter_study/net_image_address.dart';
import 'package:flutter_study/utils/title_utils.dart';
import 'package:flutter_study/comm/page/CodePreview.dart';
import 'package:flutter/material.dart';

import 'LearnListViewChildPage.dart';
import 'ListViewData.dart';

class LearnListView extends StatefulWidget {
  const LearnListView({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _LearnListView();
  }
}

/// with AutomaticKeepAliveClientMixin
/// @override
/// bool get wantKeepAlive => true;
/// 可以实现页面不刷新
class _LearnListView extends State<StatefulWidget>
    with AutomaticKeepAliveClientMixin {
  final ListViewData dataList = ListViewData()..init();

  @override
  void initState() {
    super.initState();
  }

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommTitle.setMaterialAppBar(context, "ListView",
          Callback(codeOnTap: () {
        CodePreview.go(
            context, "ListView", "lib/list/listview/LearnListView.dart");
      })),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          String itemData = dataList.list[index];
          return InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return LearnListViewChildPage();
              }));
            },
            child: Row(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.all(10.0),
                  child: Image.network(net_image_address.httpImgAddress,
                    width: 100.0,
                    height: 70.0,
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 70.0,
                        child: Text.rich(
                          TextSpan(
                            text: "",
                            children: <TextSpan>[
                              TextSpan(
                                  text: itemData,
                                  style: const TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold)),
                              const TextSpan(
                                text: "这是一张非常漂亮的美女图，喜欢就赶紧来欣赏吧，等着你哦",
                                style: TextStyle(
                                  fontSize: 10,
                                ),
                              )
                            ],
                          ),
                          textAlign: TextAlign.left,
                          textDirection: TextDirection.ltr,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
        itemCount:dataList.list.length ,
      ),
    );
  }
}
