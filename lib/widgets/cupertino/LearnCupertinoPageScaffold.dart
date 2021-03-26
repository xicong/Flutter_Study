import 'package:Flutter_Study/utils/title_utils.dart';
import 'package:Flutter_Study/comm/page/CodePreview.dart';
import 'package:Flutter_Study/utils/screen_utils.dart';
import 'package:flutter/cupertino.dart';

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
        navigationBar: CommTitle.setCupertinoNavigationBar(context,"CupertinoPageScaffold",new Callback(
          codeOnTap: (){
            CodePreview.go(context, "CupertinoPageScaffold", "lib/widgets/cupertino/LearnCupertinoPageScaffold.dart");
          }
        )),
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
