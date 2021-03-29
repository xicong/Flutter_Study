import 'package:flutter_study/utils/title_utils.dart';
import 'package:flutter_study/comm/page/CodePreview.dart';
import 'package:flutter/cupertino.dart';

class LearnCupertinoPageRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _LearnCupertinoPageRoute();
  }
}

class _LearnCupertinoPageRoute extends State<LearnCupertinoPageRoute> {
  
  var rootcontext;
  
  //首页
  Widget pageRouteHome(BuildContext context) {
    return new CupertinoPageScaffold(
        navigationBar: CommTitle.setCupertinoNavigationBar(
            context, "首页", null),
        child: new Container(
          color: CupertinoColors.white,
          child: new Center(
            child: new CupertinoButton(
                child: new Text(
                  "首页",
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

  //我的
  Widget pageRouteMine(BuildContext context) {
    return new CupertinoPageScaffold(
        navigationBar: CommTitle.setCupertinoNavigationBar(
            context, "我的", null),
        child: new Container(
          color: CupertinoColors.white,
          child: new Center(
            child: new CupertinoButton(
                child: new Text(
                  "我的",
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
//                navigationBar: CommTitle.setCupertinoNavigationBar(
//                    rootcontext, "CupertinoPageRoute$index",
//                    new Callback(codeOnTap: () {
//                  CodePreview.go(context, "CupertinoPageRoute",
//                      "lib/widgets/cupertino/LearnCupertinoPageRoute.dart");
//                })),
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
              var titleName = "";
              if(index==1){
                titleName = "首页";
              }else{
                titleName = "我的";
              }
              return CupertinoPageScaffold(
                navigationBar: CommTitle.setCupertinoNavigationBar(
                    rootcontext, titleName,
                    new Callback(codeOnTap: () {
                  CodePreview.tabGo(context, titleName,
                      "lib/widgets/cupertino/LearnCupertinoPageRoute.dart");
                })),
                child: new Center(
                  child: CupertinoButton(
                      child: new Text(titleName),
                      borderRadius:
                          new BorderRadius.all(new Radius.circular(5)),
                      color: CupertinoColors.activeBlue,
                      onPressed: () {
                        if (index == 1) {
                          Navigator.of(context, rootNavigator: true)
                              .push(CupertinoPageRoute(
                                  maintainState: false, //是否将前一个路由保存在内存中
                                  builder: (BuildContext context) {
                                    return pageRouteHome(context);
                                  }));
                        } else {
                          Navigator.of(context).push(CupertinoPageRoute(
                              maintainState: false, //是否将前一个路由保存在内存中
                              builder: (BuildContext context) {
                                return pageRouteMine(context);
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
