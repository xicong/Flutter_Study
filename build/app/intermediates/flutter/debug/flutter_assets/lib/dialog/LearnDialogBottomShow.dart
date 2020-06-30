import 'package:flutter/material.dart';
import 'package:Flutter_Study/comm/CommTitle.dart';
import 'package:Flutter_Study/commpage/CodePreview.dart';
class LearnDialogBottomShow extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return  _LearnDialogBottomShow();
  }
}
class _LearnDialogBottomShow extends State<LearnDialogBottomShow>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: CommTitle.setMaterialAppBar(context, "DialogBottom", new Callback(
        codeOnTap: (){
          CodePreview.go(context, "DialogBottom", "lib/dialog/LearnDialogBottomShow.dart");
        }
      )),
      floatingActionButton:new Builder(builder: (BuildContext context){
        return new FloatingActionButton(
          onPressed: (){
            /*  showDialog(
              context: context,
//              child: new SimpleDialog(
//                contentPadding: EdgeInsets.all(10.0),
//                title: new Text('我是标题'),
//                children: <Widget>[
//                  new Text('内容1'),
//                  new Text('内容2'),
//                  new Text('内容3'),
//                ],
//              )

//              child: new AlertDialog(
//                contentPadding: EdgeInsets.all(10.0),
//                title: new Text('我是标题'),
//                content: new Text('我是内容'),
//                actions: <Widget>[
//                  new Text('取消'),
//                  new Text('确定'),
//                ],
//              )

//            child: new AboutDialog(
//              applicationName: '名称',
//              applicationIcon: new Icon(Icons.ac_unit),
//              applicationVersion: 'V1.0',
//              children: <Widget>[
//                new Text("!!!!!!!!!!!!!!!!!!!!!!!!!!!&&&&&&&&&&&&&&&&&&&&&&&*************************____________________++++++++++++++++++++")
//              ],
//            )

            );*/


//          showBottomSheet(
//              context: context,
//              builder:(BuildContext context){
//                return new Column(
//                  children: <Widget>[
//                    new Text("111111111111111111111111111111"),
//                    new Text("222222222222222222222222222222"),
//                    new Text("3333333333333333333333333333333"),
//                    new Text("4444444444444444444444444444444"),
//                    new Text("55555555555555555555555555555555"),
//                  ],
//                );
//              }
//          );

            showModalBottomSheet(
//            showBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return new Container(
                      child: new Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: new Column(
                            children: <Widget>[
                              new ListTile(
                                leading: new Icon(Icons.chat),
                                title: new Text("开始会话"),
                              ),
                              new ListTile(
                                leading: new Icon(Icons.help),
                                title: new Text("操作说明"),
                              ),
                              new ListTile(
                                leading: new Icon(Icons.settings),
                                title: new Text("系统设置"),
                              ),
                              new ListTile(
                                leading: new Icon(Icons.more),
                                title: new Text("更多设置"),
                              ),
                            ],
                          ))
                  );
                });

          },
          child: new Icon(Icons.add),
        );
      })
    );
  }
}