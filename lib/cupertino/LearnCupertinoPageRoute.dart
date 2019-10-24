import 'dart:ffi';

import 'package:flutterdemo/utils/ScreenUtils.dart';
import 'package:flutterdemo/cupertino/CommTitle.dart';

import 'package:flutter/cupertino.dart';

class LearnCupertinoPageRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _LearnCupertinoPageRoute();
  }
}

class _LearnCupertinoPageRoute extends State<LearnCupertinoPageRoute> {
  var rootcontext;

  Widget pageRoute(BuildContext context, int index) {
    var text;
    if (index == 0) {
      text = "这是首页模块跳转过来的新页面,点击此处之后可以返回到首页模块";
    } else {
      text = "这是我的模块跳转过来的新页面,点击此处之后可以返回到我的模块";
    }
    return new CupertinoPageScaffold(
        navigationBar: CommTitle.setTitle(context, "CupertinoPageRoute跳出来的新页面"),
        child: new Container(
          color: CupertinoColors.white,
          child: new Center(
            child: new CupertinoButton(
                child: new Text(
                  text,
                  textAlign: TextAlign.center,
                  style: new TextStyle(
                    color: CupertinoColors.activeBlue,
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                }),
          ),
        ));
  }

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

          //⚠️跳转新页面可以不要底下的tab
//          return CupertinoPageScaffold(
//            navigationBar:
//            CommTitle.setTitle(rootcontext, "CupertinoPageRoute$index"),
//            child: new Center(
//              child: CupertinoButton(
//                  child: new Text('我是页面$index'),
//                  borderRadius:
//                  new BorderRadius.all(new Radius.circular(5)),
//                  color: CupertinoColors.activeBlue,
//                  onPressed: () {
//                    if(index == 2){
//                      Navigator.of(context,rootNavigator: true).push(CupertinoPageRoute<Void>(
//                          maintainState: false, //是否将前一个路由保存在内存中
//                          builder: (BuildContext context) {
//                            return pageRoute(context, index);
//                          }));
//                    }else{
//                      Navigator.of(context).push(CupertinoPageRoute<Void>(
//                          maintainState: false, //是否将前一个路由保存在内存中
//                          builder: (BuildContext context) {
//                            return pageRoute(context, index);
//                          }));
//                    }
//                  }),
//            ),
//          );

          return CupertinoTabView(
            builder: (BuildContext context) {
              return CupertinoPageScaffold(
                navigationBar:
                    CommTitle.setTitle(rootcontext, "CupertinoPageRoute$index"),
                child: new Center(
                  child: CupertinoButton(
                      child: new Text('我是页面$index'),
                      borderRadius:
                          new BorderRadius.all(new Radius.circular(5)),
                      color: CupertinoColors.activeBlue,
                      onPressed: () {
                        if(index == 2){
                          Navigator.of(context,rootNavigator: true).push(CupertinoPageRoute<Void>(
                              maintainState: false, //是否将前一个路由保存在内存中
                              builder: (BuildContext context) {
                                return pageRoute(context, index);
                              }));
                        }else{
                          Navigator.of(context).push(CupertinoPageRoute<Void>(
                              maintainState: false, //是否将前一个路由保存在内存中
                              builder: (BuildContext context) {
                                return pageRoute(context, index);
                              }));
                        }
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
