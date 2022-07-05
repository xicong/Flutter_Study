import 'package:flutter_study/utils/title_utils.dart';
import 'package:flutter_study/comm/page/CodePreview.dart';
import 'package:flutter/cupertino.dart';

class LearnCupertinoPageRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LearnCupertinoPageRoute();
  }
}

class _LearnCupertinoPageRoute extends State<LearnCupertinoPageRoute> {
  
  var rootcontext;
  
  //首页
  Widget pageRouteHome(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CommTitle.setCupertinoNavigationBar(
            context, "首页", null),
        child: Container(
          color: CupertinoColors.white,
          child: Center(
            child: CupertinoButton(
                child: Text(
                  "首页",
                  textAlign: TextAlign.center,
                  style: TextStyle(
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
    return CupertinoPageScaffold(
        navigationBar: CommTitle.setCupertinoNavigationBar(
            context, "我的", null),
        child: Container(
          color: CupertinoColors.white,
          child: Center(
            child: CupertinoButton(
                child: Text(
                  "我的",
                  textAlign: TextAlign.center,
                  style: TextStyle(
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

          //⚠️跳转新页面可以不要底下的tab
//          return CupertinoPageScaffold(
//                navigationBar: CommTitle.setCupertinoNavigationBar(
//                    rootcontext, "CupertinoPageRoute$index",
//                    Callback(codeOnTap: () {
//                  CodePreview.go(context, "CupertinoPageRoute",
//                      "lib/widgets/cupertino/LearnCupertinoPageRoute.dart");
//                })),
//            child: Center(
//              child: CupertinoButton(
//                  child: Text('我是页面$index'),
//                  borderRadius:
//                  BorderRadius.all(Radius.circular(5)),
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
                    Callback(codeOnTap: () {
                  CodePreview.tabGo(context, titleName,
                      "lib/widgets/cupertino/LearnCupertinoPageRoute.dart");
                })),
                child: Center(
                  child: CupertinoButton(
                      child: Text(titleName),
                      borderRadius:
                          BorderRadius.all(Radius.circular(5)),
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
