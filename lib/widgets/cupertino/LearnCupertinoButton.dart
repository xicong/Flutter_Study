import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_study/utils/title_utils.dart';
import 'package:flutter_study/comm/page/CodePreview.dart';
import 'package:flutter/cupertino.dart';

class LearnCupertinoButton extends StatefulWidget {
  const LearnCupertinoButton({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _LearnCupertinoButton();
  }
}

class _LearnCupertinoButton extends State<LearnCupertinoButton> {
  @override
  Widget build(BuildContext context) {
    String str = Theme.of(context).colorScheme.brightness == Brightness.dark ? "夜间模式" : "日间模式";
    return CupertinoApp(
      home: CupertinoPageScaffold(
        navigationBar: CommTitle.setCupertinoNavigationBar(context,"CupertinoButton",Callback(
          codeOnTap: (){
            CodePreview.go(context, "CupertinoButton", "lib/widgets/cupertino/LearnCupertinoButton.dart");
          }
        )),
        child: ListView(
          children: <Widget>[
            
            Text("当前模式$str"),
            
            Padding(
              padding: const EdgeInsets.all(10),
              child: CupertinoButton(
                  color: CupertinoColors.activeBlue,   //设置按钮的颜色
                  disabledColor: CupertinoColors.black,  //设置按钮被禁用时候的颜色
                  borderRadius: const BorderRadius.all(Radius.circular(10)),   //设置按钮的圆角
                  pressedOpacity: 0.5, //设置按钮被按下时候的透明度
                  onPressed: () {  //该方法不写表示按钮被禁用，则会显示被禁用的颜色
                    if (kDebugMode) {
                      print("点击了");
                    }
                  },
                  child: const Text("我是一个CupertinoButton")
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
