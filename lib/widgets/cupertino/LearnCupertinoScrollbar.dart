import 'package:Flutter_Study/utils/title_utils.dart';
import 'package:Flutter_Study/comm/page/CodePreview.dart';
import 'package:flutter/cupertino.dart';

class LearnCupertinoScrollbar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _LearnCupertinoScrollbar();
  }
}

class _LearnCupertinoScrollbar extends State<LearnCupertinoScrollbar> {
  @override
  Widget build(BuildContext context) {
    return new CupertinoApp(
      home: new CupertinoPageScaffold(
        navigationBar: CommTitle.setCupertinoNavigationBar(context, "CupertinoScrollbar",new Callback(
          codeOnTap: () {
            CodePreview.go(context, "CupertinoScrollbar", "lib/widgets/cupertino/LearnCupertinoScrollbar.dart");
          }
        )),
        child: new CupertinoScrollbar(
            child: new ListView.custom(
                scrollDirection: Axis.vertical,
                childrenDelegate: SliverChildBuilderDelegate((BuildContext context,int index){
                  return new Container(
                    child: new Text("条目$index",
                      style: new TextStyle(
                        color: CupertinoColors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    alignment: Alignment.center,
                    decoration: new BoxDecoration(
                      borderRadius: new BorderRadius.all(new Radius.circular(10)),
                      color: CupertinoColors.activeBlue,
                    ),
                    padding: EdgeInsets.only(top: 20,bottom: 20),
                    margin: EdgeInsets.only(left: 10,right: 10,top: 5,bottom: 5),
                  );
                },childCount: 30)
            )),
      ),
    );
  }
}
