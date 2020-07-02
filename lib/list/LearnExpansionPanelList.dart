import 'package:flutter/material.dart';
import '../comm/page/CodePreview.dart';
import '../comm/CommTitle.dart';

class LearnExpansionPanelList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _LearnExpansionPanelList();
  }
}

class _LearnExpansionPanelList extends State<LearnExpansionPanelList> {
  var currentPanelIndex = -1; //设置-1默认全部闭合
  List<int> mList;

  _LearnExpansionPanelList() {
    mList = new List();
    for (int i = 0; i < 5; i++) {
      mList.add(i);
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: CommTitle.setMaterialAppBar(context, "ExpansionPanelList",
          new Callback(codeOnTap: () {
        CodePreview.go(context, "ExpansionPanelList",
            "lib/list/LearnExpansionPanelList.dart");
      })),
      body: new SingleChildScrollView(
        child: new Column(
          children: <Widget>[
            new Text('这是一个自带的，样子挺丑的吧'),
            new ExpansionPanelList(
              expansionCallback: (panelIndex, isExpanded) {
                setState(() {
                  currentPanelIndex =
                      (currentPanelIndex != panelIndex ? panelIndex : -1);
                });
              },
              children: mList.map((i) {
                return new ExpansionPanel(
                  headerBuilder: (context, isExpanded) {
                    return new ListTile(
                      title: new Text('这是标题$i'),
                    );
                  },
                  body: new Padding(
                    padding: EdgeInsets.all(30.0),
                    child: new ListBody(
                      children: <Widget>[
                        new Text('这是标题$i的内容'),
                      ],
                    ),
                  ),
                  isExpanded: currentPanelIndex == i,
                );
              }).toList(),
            ),
            new Text('拉一个好看点的吧，类似qq分组之类的'),
//            new ListView.builder(
//                itemBuilder: (BuildContext context, int index){
//                  return new ListTile(
//                    leading: new Icon(Icons.add),
//                    title: new Text('111'),
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
