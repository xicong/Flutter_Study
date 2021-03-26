import 'package:flutter/material.dart';
import '../utils/title_utils.dart';
import '../comm/page/CodePreview.dart';

class LearnScaffold extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _LearnScaffold();
  }
}

class _LearnScaffold extends State<LearnScaffold> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        //实现了基本的纸墨布局结构包含titlebar  body  drawer  悬浮按钮 bottomNavigationBar,基本用到的都会涵盖
        appBar: new AppBar(
          backgroundColor: Colors.green,
          //设置标题栏的背景颜色
          title: new Title(
            child: new Text(
              '这是一个标题',
              style: new TextStyle(
                fontSize: 20.0,
                color: Colors.white,
              ),
            ),
            color: Colors
                .white, //设置标题栏文字的颜色(new title的时候color不能为null不然会报错一般可以不用new title 直接new text,不过最终的文字里面还是以里面new text的style样式文字颜色为准)
          ),
          centerTitle: true,
          //设置标题居中
          elevation: 10.0,
          //设置标题栏下面阴影的高度
          leading: new Builder(builder: (BuildContext context) {
            return new GestureDetector(
              //设置事件
              child: new Icon(
                //设置左边的图标
                Icons.arrow_back_ios, //设置图标内容
                color: Colors.white, //设置图标的颜色
              ),
              onTap: () {
                Navigator.pop(context);
              },
              onLongPress: () {
                Scaffold.of(context)
                    .showSnackBar(new SnackBar(content: new Text('长按')));
              },
              onDoubleTap: () {
                Scaffold.of(context)
                    .showSnackBar(new SnackBar(content: new Text('双击')));
              },
            );
          }),
//        brightness:Brightness.dark,//设置明暗模式（不过写了没看出变化，后面再看）
          primary: true,
          //是否设置内容避开状态栏
//        flexibleSpace: ,//伸缩控件后面再看
//        automaticallyImplyLeading: true,
          actions: <Widget>[
            //设置显示在右边的控件
            new Padding(
              child: new Icon(Icons.add),
              padding: EdgeInsets.all(10.0),
            ),
            CommTitle.setMaterialTitleViewRightBtn("源码",
                new Callback(codeOnTap: () {
              CodePreview.go(
                  context, "Scaffold", "lib/layout/LearnScaffold.dart");
            }))
          ],
          bottom: PreferredSize(
            //设置标题下面的view
            child: new Container(
              height: 50.0,
              child: new Center(
                child: new Text(
                  '显示在title下面',
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.red,
              ),
            ),
            preferredSize: Size.fromHeight(50.0),
          ),
        ),
        body: new Text('学习Scaffold'),
        persistentFooterButtons: <Widget>[
          //底部持久化的一些小图标
          new Icon(Icons.add_shopping_cart),
          new Icon(Icons.ac_unit),
          new Icon(Icons.print),
          new Icon(Icons.accessibility),
          new Icon(Icons.keyboard),
          new Icon(Icons.add_shopping_cart),
          new Icon(Icons.ac_unit),
          new Icon(Icons.print),
          new Icon(Icons.accessibility),
        ],
        drawer: new Drawer(
          //侧边栏
          child: new Image.network(
            "http://tva2.sinaimg.cn/crop.0.3.707.707.180/a2f7c645jw8f6qvlbp1g7j20js0jrgrz.jpg",
            fit: BoxFit.fill,
          ),
        ),
        bottomNavigationBar: new BottomNavigationBar(
          //底部导航栏
          currentIndex: 1, //默认选中的位置
          fixedColor: Colors.green, //选中的颜色
          items: <BottomNavigationBarItem>[
            new BottomNavigationBarItem(
              icon: new Icon(
                Icons.airplay,
              ),
              title: new Text(
                '主页',
              ),
            ),
            new BottomNavigationBarItem(
              icon: new Icon(
                Icons.add,
              ),
              title: new Text(
                '加量',
              ),
            ),
            new BottomNavigationBarItem(
              icon: new Icon(
                Icons.account_box,
              ),
              title: new Text(
                '个人中心',
              ),
            ),
          ],
        ),
        floatingActionButton: new Builder(builder: (BuildContext context) {
          return new FloatingActionButton(
            tooltip: '这里是长按提示的文字',
            backgroundColor: Colors.red,
            //设置悬浮按钮的背景颜色
//             heroTag: ,//页面切换动画的tag
            elevation: 10.0,
            //阴影大小
//             highlightElevation: 20.0,//设置高亮的阴影
            mini: false,
            //设置是否为小图标
            child: new Icon(Icons.access_alarm),
            //设置中间的小图标
            onPressed: () {
              Scaffold.of(context).showSnackBar(
                new SnackBar(
                  content: new Text('看你出来不'), //设置要提示的文字
                  backgroundColor: Colors.red, //设置背景颜色
                  duration: new Duration(
                    //设置显示的时间
                    days: 0,
                    hours: 0,
                    minutes: 1,
                    milliseconds: 0,
                    microseconds: 0,
                  ),
//                 animation: ,//设置显示的时候的动画 (动画等学习了再加以补充)
                  action: new SnackBarAction(
                    label: "DIANJ", //按钮显示的内容
                    onPressed: () {
                      //点击之后触发的另一个事件
                      print(
                          '&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&');
                    },
                  ),
                ),
              );
            },
          );
        }));
  }
}
