import 'package:flutter/material.dart';
import '../utils/title_utils.dart';
import '../comm/page/CodePreview.dart';

class LearnColumn extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LearnColumn();
  }
}

class _LearnColumn extends State<LearnColumn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommTitle.setMaterialAppBar(context, "Column",
          Callback(codeOnTap: () {
        CodePreview.go(context, "Column", "lib/layout/LearnColumn.dart");
      })),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        //控制内容显示位置，类似于layout_gravity  MainAxisAlignment.start显示于主轴起点的位置因为有的国家内容是从右往左边读的，所以这里只区分起点和终点
        // end将多个小部件放置于主轴结束的位置
        //center将多个小部件放置于主轴的中间
        //spaceBetween将多个小部件均匀的分布在空闲的主轴控件中
        // spaceAround 可以在小部件的之前之后之间均匀分割空闲的一半空间
        // spaceEvenly 可以在小部件的之前之后之间均匀的分割空闲的空间
        crossAxisAlignment: CrossAxisAlignment.stretch,
        //要求内部的小部件填充满横轴
        //在Row中mainAxisAlignment控制水平方向对齐，crossAxisAlignment控制垂直方向对齐，而在Column中则正好相反
        mainAxisSize: MainAxisSize.max,
        //设置主轴方向所占的宽度和高度
        children: <Widget>[
          Container(
            height: 50.0,
            margin: const EdgeInsets.all(10),
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
            child: const Text("子元素1"),
          ),
          Container(
            height: 50.0,
            margin: const EdgeInsets.all(10),
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
            child: const Text("子元素1"),
          ),
          Container(
            height: 50.0,
            margin: const EdgeInsets.all(10),
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
            child: const Text("子元素1"),
          ),
          Container(
            height: 50.0,
            margin: const EdgeInsets.all(10),
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
            child: const Text("子元素1"),
          ),
        ],
      ),
    );
  }
}
