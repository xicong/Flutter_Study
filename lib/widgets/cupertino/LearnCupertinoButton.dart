import 'package:flutter/cupertino.dart';
import 'package:flutterdemo/comm/CommTitle.dart';
import 'package:flutterdemo/commpage/CodePreview.dart';

class LearnCupertinoButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _LearnCupertinoButton();
  }
}

class _LearnCupertinoButton extends State<LearnCupertinoButton> {
  @override
  Widget build(BuildContext context) {
    return new CupertinoApp(
      home: new CupertinoPageScaffold(
        navigationBar: CommTitle.setCupertinoNavigationBar(context,"CupertinoButton",new Callback(
          codeOnTap: (){
            CodePreview.go(context, "CupertinoButton", "lib/widgets/cupertino/LearnCupertinoButton.dart");
          }
        )),
        child: new ListView(
          children: <Widget>[
            new Padding(
              padding: EdgeInsets.all(10),
              child: new CupertinoButton(
                  child: new Text("我是一个CupertinoButton"),
                  color: CupertinoColors.activeBlue,   //设置按钮的颜色
                  disabledColor: CupertinoColors.black,  //设置按钮被禁用时候的颜色
                  borderRadius: BorderRadius.all(Radius.circular(10)),   //设置按钮的圆角
                  pressedOpacity: 0.5, //设置按钮被按下时候的透明度
                  onPressed: () {  //该方法不写表示按钮被禁用，则会显示被禁用的颜色
                    print("点击了");
                  }
              ),
            ),
          ],
        ),
      ),
    );
  }
}
