import 'dart:ffi';

import 'package:flutterdemo/utils/ScreenUtils.dart';
import 'package:flutterdemo/comm/CommTitle.dart';

import 'package:flutter/cupertino.dart';

class LearnCupertinoTabScaffold extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _LearnCupertinoTabScaffold();
  }
}

class _LearnCupertinoTabScaffold extends State<LearnCupertinoTabScaffold> {
  var rootcontext;

  @override
  Widget build(BuildContext context) {
    rootcontext = context;
    return new CupertinoApp(
      home: new CupertinoTabScaffold(
        tabBar: new CupertinoTabBar(items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home), title: Text("首页")),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.person), title: Text("我的")),
        ]),
        tabBuilder: (BuildContext context, int index) {
          ++index;
          return CupertinoTabView(
            builder: (BuildContext context) {
              return CupertinoPageScaffold(
                navigationBar:
                    CommTitle.setCupertinoNavigationBar(rootcontext, "CupertinoTabScaffold$index"),
                child: new Center(
                  child: CupertinoButton(
                      child: new Text('我是页面$index'),
                      borderRadius:
                          new BorderRadius.all(new Radius.circular(5)),
                      color: CupertinoColors.activeBlue,
                      onPressed: () {
                      }),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
