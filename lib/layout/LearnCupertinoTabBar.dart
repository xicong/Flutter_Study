import '../comm/page/CodePreview.dart';
import '../utils/title_utils.dart';
import 'package:flutter/cupertino.dart';

class LearnCupertinoTabBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LearnCupertinoTabBar();
  }
}

class _LearnCupertinoTabBar extends State<LearnCupertinoTabBar> {
  var rootcontext;

  @override
  Widget build(BuildContext context) {
    rootcontext = context;
    return CupertinoApp(
      home: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(items: const <BottomNavigationBarItem>[
          // BottomNavigationBarItem(
          //     icon: Icon(CupertinoIcons.home), title: Text("首页")),
          // BottomNavigationBarItem(
          //     icon: Icon(CupertinoIcons.person), title: Text("我的")),
        ]),
        tabBuilder: (BuildContext context, int index) {
          ++index;
          return CupertinoTabView(
            builder: (BuildContext context) {
              return CupertinoPageScaffold(
                navigationBar: CommTitle.setCupertinoNavigationBar(
                    rootcontext, "CupertinoTabBar$index",
                    Callback(codeOnTap: () {
                  CodePreview.tabGo(context, "CupertinoTabBar",
                      "lib/layout/LearnCupertinoTabBar.dart");
                })),
                child: Center(
                  child: CupertinoButton(
                      child: Text('我是页面$index'),
                      borderRadius:
                          BorderRadius.all(Radius.circular(5)),
                      color: CupertinoColors.activeBlue,
                      onPressed: () {}),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
