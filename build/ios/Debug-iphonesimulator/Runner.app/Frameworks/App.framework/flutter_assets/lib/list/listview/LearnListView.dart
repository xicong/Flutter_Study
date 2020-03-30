import 'package:flutter/material.dart';
import 'package:flutterdemo/commpage/CodePreview.dart';
import 'package:flutterdemo/comm/CommTitle.dart';
import 'package:flutterdemo/list/listview/LearnListViewChildPage.dart';
import 'package:flutterdemo/list/listview/ListViewData.dart';

class LearnListView extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new _LearnListView();
  }
}

/**
 * with AutomaticKeepAliveClientMixin
 * @override
 * bool get wantKeepAlive => true;
 * 可以实现页面不刷新
 */
class _LearnListView extends State<StatefulWidget> with AutomaticKeepAliveClientMixin{

  final ListViewData dataList = ListViewData()..init();

  @override
  void initState() {
    super.initState();
  }
  
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: CommTitle.setMaterialAppBar(context, "ListView", new Callback(
          codeOnTap: (){
            CodePreview.go(context, "ListView", "lib/list/listview/LearnListView.dart");
          }
      )),
      body: new ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          String itemData=dataList.list[index];
          return new InkWell(
            onTap: (){
              Navigator.push(context,
                  new MaterialPageRoute(builder: (BuildContext context) {
                    return new LearnListViewChildPage();
                  }));
            },
            child: new Row(
              children: <Widget>[
                new Container(
                  child:new Image.network(
                    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1569565542445&di=2e19492bf75c1b0e379312848e977bbb&imgtype=0&src=http%3A%2F%2Fimg3.redocn.com%2Ftupian%2F20151014%2Fweimeifengjingmeitu_5094438.jpg',
                    width: 100.0,
                    height: 70.0,
                    fit: BoxFit.cover,
                  ),
                  margin: EdgeInsets.all(10.0),
                ),
                new Expanded(
                  child:new Column(
                    children: <Widget>[
                      new Container(
                        height: 70.0,
                        child: new Text.rich(new TextSpan(
                          text: "",
                          children:<TextSpan>[
                            new TextSpan(
                              text: "$itemData",
                              style: new TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold
                              )
                            ),
                            new TextSpan(
                                text: "这是一张非常漂亮的美女图，喜欢就赶紧来欣赏吧，等着你哦", 
                                style: new TextStyle(
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
                  flex: 1,
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