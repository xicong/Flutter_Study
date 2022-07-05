import '../comm/page/CodePreview.dart';
import 'package:flutter/material.dart';
import '../utils/title_utils.dart';

class LearnDialogBottomShow extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LearnDialogBottomShow();
  }
}

class _LearnDialogBottomShow extends State<LearnDialogBottomShow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CommTitle.setMaterialAppBar(context, "DialogBottom",
            Callback(codeOnTap: () {
          CodePreview.go(
              context, "DialogBottom", "lib/dialog/LearnDialogBottomShow.dart");
        })),
        floatingActionButton: Builder(builder: (BuildContext context) {
          return FloatingActionButton(
            onPressed: () {
              /*  showDialog(
              context: context,
//              child: SimpleDialog(
//                contentPadding: EdgeInsets.all(10.0),
//                title: Text('我是标题'),
//                children: <Widget>[
//                  Text('内容1'),
//                  Text('内容2'),
//                  Text('内容3'),
//                ],
//              )

//              child: AlertDialog(
//                contentPadding: EdgeInsets.all(10.0),
//                title: Text('我是标题'),
//                content: Text('我是内容'),
//                actions: <Widget>[
//                  Text('取消'),
//                  Text('确定'),
//                ],
//              )

//            child: AboutDialog(
//              applicationName: '名称',
//              applicationIcon: Icon(Icons.ac_unit),
//              applicationVersion: 'V1.0',
//              children: <Widget>[
//                Text("!!!!!!!!!!!!!!!!!!!!!!!!!!!&&&&&&&&&&&&&&&&&&&&&&&*************************____________________++++++++++++++++++++")
//              ],
//            )

            );*/

//          showBottomSheet(
//              context: context,
//              builder:(BuildContext context){
//                return Column(
//                  children: <Widget>[
//                    Text("111111111111111111111111111111"),
//                    Text("222222222222222222222222222222"),
//                    Text("3333333333333333333333333333333"),
//                    Text("4444444444444444444444444444444"),
//                    Text("55555555555555555555555555555555"),
//                  ],
//                );
//              }
//          );

              showModalBottomSheet(
//            showBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                        child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: <Widget>[
                                ListTile(
                                  leading: Icon(Icons.chat),
                                  title: Text("开始会话"),
                                ),
                                ListTile(
                                  leading: Icon(Icons.help),
                                  title: Text("操作说明"),
                                ),
                                ListTile(
                                  leading: Icon(Icons.settings),
                                  title: Text("系统设置"),
                                ),
                                ListTile(
                                  leading: Icon(Icons.more),
                                  title: Text("更多设置"),
                                ),
                              ],
                            )));
                  });
            },
            child: Icon(Icons.add),
          );
        }));
  }
}
