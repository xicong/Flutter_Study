import 'package:flutter_study/utils/title_utils.dart';
import 'package:flutter_study/comm/page/CodePreview.dart';
import 'package:flutter/cupertino.dart';

class LearnCupertinoNavigationBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LearnLearnCupertinoNavigationBar();
  }
}

class _LearnLearnCupertinoNavigationBar extends State<LearnCupertinoNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          automaticallyImplyLeading: false, //是否显示左边组件  作用效果无效
          automaticallyImplyMiddle: false,  //是否显示中间组件  作用效果无效
          previousPageTitle: "返回",   //导航左侧组件右边的文本  作用效果无效
          middle: Text("CupertinoNavigationBar",
            style: TextStyle(
                color: CupertinoColors.white
            ),
          ), //导航栏中间的组件
//          trailing: Icon(CupertinoIcons.add,  //导航栏右边的组件
//            color: CupertinoColors.white,
//          ),
          trailing: CommTitle.setCupertinoTitleViewRightBtn("源码", Callback(
            codeOnTap: (){
              CodePreview.go(context, "CupertinoNavigationBar", "lib/widgets/cupertino/LearnCupertinoNavigationBar.dart");
            }
          )),
          border: Border.all( //设置title栏的边框
              width: 5,
              color: CupertinoColors.destructiveRed
          ),
          leading: GestureDetector(
            child: Icon(CupertinoIcons.back,
              color: CupertinoColors.white,
            ),
            onTap: (){
              Navigator.pop(context);
            },
          ),
          backgroundColor: CupertinoColors.activeBlue, //设置title栏的颜色
          padding: EdgeInsetsDirectional.only(start: 0,end: 0),  //设置标题栏行下左右的内边距
        ),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                color: CupertinoColors.black,
                width: 200,
                height: 50,
              )
            ),
          ],
        ),
      ),
    );
  }
}
