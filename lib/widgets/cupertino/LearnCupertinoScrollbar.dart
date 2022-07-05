import 'package:flutter_study/utils/title_utils.dart';
import 'package:flutter_study/comm/page/CodePreview.dart';
import 'package:flutter/cupertino.dart';

class LearnCupertinoScrollbar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LearnCupertinoScrollbar();
  }
}

class _LearnCupertinoScrollbar extends State<LearnCupertinoScrollbar> {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoPageScaffold(
        navigationBar: CommTitle.setCupertinoNavigationBar(context, "CupertinoScrollbar",Callback(
          codeOnTap: () {
            CodePreview.go(context, "CupertinoScrollbar", "lib/widgets/cupertino/LearnCupertinoScrollbar.dart");
          }
        )),
        child: CupertinoScrollbar(
            child: ListView.custom(
                scrollDirection: Axis.vertical,
                childrenDelegate: SliverChildBuilderDelegate((BuildContext context,int index){
                  return Container(
                    child: Text("条目$index",
                      style: TextStyle(
                        color: CupertinoColors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
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
