import 'package:flutter/material.dart';
import '../comm/page/CodePreview.dart';
import '../utils/title_utils.dart';

class LearnExpansionPanelList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LearnExpansionPanelList();
  }
}

class _LearnExpansionPanelList extends State<LearnExpansionPanelList> {
  var currentPanelIndex = -1;

  // get mList =  List(); //设置-1默认全部闭合
  // List<int> mList;

  // _LearnExpansionPanelList() {
  //   mList = List();
  //   for (int i = 0; i < 5; i++) {
  //     mList.add(i);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommTitle.setMaterialAppBar(context, "ExpansionPanelList",
          Callback(codeOnTap: () {
        CodePreview.go(context, "ExpansionPanelList",
            "lib/list/LearnExpansionPanelList.dart");
      })),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Text('这是一个自带的，样子挺丑的吧'),
            ExpansionPanelList(
              expansionCallback: (panelIndex, isExpanded) {
                setState(() {
                  currentPanelIndex =
                      (currentPanelIndex != panelIndex ? panelIndex : -1);
                });
              },
              // children: mList.map((i) {
              //   return ExpansionPanel(
              //     headerBuilder: (context, isExpanded) {
              //       return ListTile(
              //         title: Text('这是标题$i'),
              //       );
              //     },
              //     body: Padding(
              //       padding: EdgeInsets.all(30.0),
              //       child: ListBody(
              //         children: <Widget>[
              //           Text('这是标题$i的内容'),
              //         ],
              //       ),
              //     ),
              //     isExpanded: currentPanelIndex == i,
              //   );
              // }).toList(),
            ),
            Text('拉一个好看点的吧，类似qq分组之类的'),
//            ListView.builder(
//                itemBuilder: (BuildContext context, int index){
//                  return ListTile(
//                    leading: Icon(Icons.add),
//                    title: Text('111'),
//                  );
//                },
//              itemCount: 1,
//            ),
          ],
        ),
      ),
    );
  }
}
