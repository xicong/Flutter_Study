import 'package:flutter/cupertino.dart';
import 'package:flutterdemo/comm/CommTitle.dart';
import 'package:flutterdemo/commpage/CodePreview.dart';

class LearnCupertinoSliverNavigationBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _LearnCupertinoSliverNavigationBar();
  }
}
class _LearnCupertinoSliverNavigationBar
    extends State<LearnCupertinoSliverNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return new CupertinoApp(
      home: new CupertinoPageScaffold(
//        navigationBar:
//            CommTitle.setCupertinoNavigationBar(context, "CupertinoSliverNavigationBar"),
        child: new CustomScrollView(
          slivers: <Widget>[
            //里面只能全部是Sliver类控件
            CupertinoSliverNavigationBar(   //用这个后要删掉上面的navigationBar，不然会报错
              //放在listview里面会报错
              largeTitle: new Text("CupertinoSliverNavigationBar",
                style: new TextStyle(
                  color: CupertinoColors.white
                ),
              ),
              previousPageTitle: "previousPageTitle",
//              middle: new Text("CupertinoSliverNavigationBar"),  //写了滚动之后largeTitle就不会显示到该位置
              leading: new GestureDetector(
                child: Icon(CupertinoIcons.back,
                  color: CupertinoColors.white,
                ),
                onTap:(){
                  Navigator.pop(context);
                },
              ),
//              trailing: Icon(CupertinoIcons.gear_solid,
//                color: CupertinoColors.white,
//              ),
            trailing: CommTitle.setCupertinoTitleViewRightBtn("源码", new Callback(
              codeOnTap: (){
                CodePreview.go(context, "CupertinoSliverNavigationBar", "lib/widgets/cupertino/LearnCupertinoSliverNavigationBar.dart");
              }
            )),
              backgroundColor: CupertinoColors.systemBlue,
            ),
            SliverSafeArea(
              top: false,
              sliver: SliverList(
                  delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                return new Container(
                  child: new Text(
                    "$index",
                    style: new TextStyle(
                        color: CupertinoColors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(top: 20, bottom: 20),
                  margin:
                      EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
                  decoration: new BoxDecoration(
                      color: CupertinoColors.systemBlue,
                      borderRadius:
                          new BorderRadius.all(new Radius.circular(10))),
                );
              }, childCount: 20)),
            ),
          ],
        ),
      ),
    );
  }
}
