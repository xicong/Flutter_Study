import 'package:flutter_study/utils/title_utils.dart';
import 'package:flutter_study/comm/page/CodePreview.dart';
import 'package:flutter_study/utils/screen_utils.dart';
import 'package:flutter/cupertino.dart';

class LearnCupertinoPageScaffold extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LearnCupertinoPageScaffold();
  }
}

class _LearnCupertinoPageScaffold extends State<LearnCupertinoPageScaffold> {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoPageScaffold(
        navigationBar: CommTitle.setCupertinoNavigationBar(context,"CupertinoPageScaffold",Callback(
          codeOnTap: (){
            CodePreview.go(context, "CupertinoPageScaffold", "lib/widgets/cupertino/LearnCupertinoPageScaffold.dart");
          }
        )),
        resizeToAvoidBottomInset: false, //是否要调整自己的大小以避免窗口的底部插入
        child: ListView(
          children: <Widget>[
            Container(
              alignment:Alignment.center,
              child: Text("这是控件的内容部分"),
              height: ScreenUtils.getScreenHeight(context),
              color: CupertinoColors.activeOrange,
            ),
          ],
        ),
      ),
    );
  }
}
