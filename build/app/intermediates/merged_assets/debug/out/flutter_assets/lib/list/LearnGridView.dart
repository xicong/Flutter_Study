import 'package:flutter/material.dart';
import '../comm/page/CodePreview.dart';
import '../comm/CommTitle.dart';

class LearnGridView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LearnGridView();
  }
}

class _LearnGridView extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: CommTitle.setMaterialAppBar(context, "GridView", new Callback(
          codeOnTap: () {
            CodePreview.go(
                context, "GridView", "lib/list/LearnGridView.dart");
          }
      )),
      body: new GridView.builder(
        // SliverGridDelegateWithFixedCrossAxisCount可以直接指定每行（列）显示多少个Item   
        // SliverGridDelegateWithMaxCrossAxisExtent会根据GridView的宽度和你设置的每个的宽度来自动计算没行显示多少个Item
        gridDelegate: new SliverGridDelegateWithMaxCrossAxisExtent( 
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          maxCrossAxisExtent: 100.0,
        ),
        itemBuilder: (BuildContext context, int index) {
          return new Image.network(
            'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=15335368'
                '41326&di=682e2e7c3810ac92be325e62e173c0ea&imgtype=0&src=http%3A%2F%2Fs6.si'
                'naimg.cn%2Fmw690%2F006LDoUHzy7auXEaYER25%26690',
            fit: BoxFit.cover,
          );
        },
        itemCount: 100,
      ),
    );
  }
}