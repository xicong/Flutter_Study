import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_study/net_image_address.dart';
import '../utils/title_utils.dart';
import '../comm/page/CodePreview.dart';

class LearnScaffold extends StatefulWidget {
  const LearnScaffold({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _LearnScaffold();
  }
}
class _LearnScaffold extends State<LearnScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //实现了基本的纸墨布局结构包含titlebar  body  drawer  悬浮按钮 bottomNavigationBar,基本用到的都会涵盖
        appBar: AppBar(
          //设置标题栏的背景颜色
          backgroundColor: Colors.green,
          //设置标题栏文字
          title: Title(
            color: Colors
                .white,
            child: const Text(
              '这是一个标题',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
              ),
            ), //设置标题栏文字的颜色(title的时候color不能为null不然会报错一般可以不用title 直接text,不过最终的文字里面还是以里面text的style样式文字颜色为准)
          ),
          centerTitle: true,
          //设置标题居中
          elevation: 10.0,
          //设置标题栏下面阴影的高度
          leading: Builder(builder: (BuildContext context) {
            return GestureDetector(
              //设置事件
              child: const Icon(
                //设置左边的图标
                Icons.arrow_back_ios, //设置图标内容
                color: Colors.white, //设置图标的颜色
              ),
              onTap: () {
                Navigator.pop(context);
              },
              onLongPress: () {
                Scaffold.of(context)
                    .showSnackBar(const SnackBar(content: Text('长按')));
              },
              onDoubleTap: () {
                Scaffold.of(context)
                    .showSnackBar(const SnackBar(content: Text('双击')));
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
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Icon(Icons.add),
            ),
            CommTitle.setMaterialTitleViewRightBtn("源码",
                Callback(codeOnTap: () {
              CodePreview.go(
                  context, "Scaffold", "lib/layout/LearnScaffold.dart");
            }))
          ],
          bottom: PreferredSize(
            //设置标题下面的view
            preferredSize: const Size.fromHeight(50.0),
            //设置标题下面的view
            child: Container(
              height: 50.0,
              decoration: const BoxDecoration(
                color: Colors.red,
              ),
              child: const Center(
                child: Text(
                  '显示在title下面',
                ),
              ),
            ),
          ),
        ),
        body: Column(
          children:  <Widget>[
            
            const Text("学习Scaffold"),
            
            Builder(builder:(context)=>
              GestureDetector(
                child: const Text("打开侧边栏"),
                onTap: (){
                  Scaffold.of(context).openDrawer();
                },
              )
            )
          ],
        ),
        persistentFooterButtons: const <Widget>[
          //底部持久化的一些小图标
          Icon(Icons.add_shopping_cart),
          Icon(Icons.ac_unit),
          Icon(Icons.print),
          Icon(Icons.accessibility),
          Icon(Icons.keyboard),
          Icon(Icons.add_shopping_cart),
          Icon(Icons.ac_unit),
          Icon(Icons.print),
          Icon(Icons.accessibility),
        ],
        drawer: Drawer(
          //侧边栏
          child: Image.network(
            net_image_address.httpImgAddress,
            fit: BoxFit.fill,
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          //底部导航栏
          currentIndex: 1, //默认选中的位置
          fixedColor: Colors.green, //选中的颜色
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.airplay,
                ),
                label: "主页"
            ),
            BottomNavigationBarItem(
                icon:Icon(
                  Icons.add,
                ),
                label: "加量"
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_box,
                ), 
                label: "个人中心"
            ),
          ],
        ),
        floatingActionButton: Builder(builder: (BuildContext context) {
          return FloatingActionButton(
            tooltip: '这里是长按提示的文字',
            backgroundColor: Colors.red,
            //设置悬浮按钮的背景颜色
//             heroTag: ,//页面切换动画的tag
            elevation: 10.0,
            //阴影大小
//             highlightElevation: 20.0,//设置高亮的阴影
            mini: false,
            //设置是否为小图标
            child: const Icon(Icons.access_alarm),
            //设置中间的小图标
            onPressed: () {
              Scaffold.of(context).showSnackBar(
                SnackBar(
                  content: const Text('看你出来不'), //设置要提示的文字
                  backgroundColor: Colors.red, //设置背景颜色
                  duration: const Duration(
                    //设置显示的时间
                    days: 0,
                    hours: 0,
                    minutes: 1,
                    milliseconds: 0,
                    microseconds: 0,
                  ),
//                 animation: ,//设置显示的时候的动画 (动画等学习了再加以补充)
                  action: SnackBarAction(
                    label: "DIANJ", //按钮显示的内容
                    onPressed: () {
                      //点击之后触发的另一个事件
                      if (kDebugMode) {
                        print(
                          '&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&');
                      }
                    },
                  ),
                ),
              );
            },
          );
        }));
  }
}
