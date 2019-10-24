import 'package:flutter/cupertino.dart';
import 'package:flutterdemo/cupertino/CommTitle.dart';
import 'package:flutterdemo/utils/ScreenUtils.dart';

class LearnCupertinoPageScaffold extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _LearnCupertinoPageScaffold();
  }
}

class _LearnCupertinoPageScaffold extends State<LearnCupertinoPageScaffold> {
  @override
  Widget build(BuildContext context) {
    return new CupertinoApp(
      home: new CupertinoPageScaffold(
        navigationBar: CommTitle.setTitle(context,"CupertinoPageScaffold"),
        resizeToAvoidBottomInset: false, //是否要调整自己的大小以避免窗口的底部插入
        child: new ListView(
          children: <Widget>[
            new Container(
              alignment:Alignment.center,
              child: new Text("这是控件的内容部分"),
              height: ScreenUtils.getScreenHeight(context),
              color: CupertinoColors.activeOrange,
            ),
          ],
        ),
      ),
    );
  }
}
