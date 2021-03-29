import 'package:flutter_study/utils/title_utils.dart';
import 'package:flutter_study/comm/page/CodePreview.dart';
import 'package:flutter/cupertino.dart';

class LearnCupertinoSwitch extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _LearnCupertinoSwitch();
  }
}

class _LearnCupertinoSwitch extends State<LearnCupertinoSwitch> {
  bool isOpen = false;

  @override
  Widget build(BuildContext context) {
    return new CupertinoApp(
      home: new CupertinoPageScaffold(
        navigationBar: CommTitle.setCupertinoNavigationBar(context, "CupertinoSwitch",new Callback(
          codeOnTap: (){
            CodePreview.go(context, "CupertinoSwitch", "lib/widgets/cupertino/LearnCupertinoSwitch.dart");
          }
        )),
        child: new ListView(
          children: <Widget>[
            new CupertinoSwitch(
                value: isOpen,
                activeColor: CupertinoColors.activeBlue,
                onChanged: (bool) {
                  setState(() {
                    isOpen = bool;
                  });
                }),
            new GestureDetector(
              child: new Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                alignment: Alignment.center,
                decoration: new BoxDecoration(
                    //用BoxDecoration的时候必须去掉外面的颜色用里面的颜色，不然会报错
                    borderRadius: new BorderRadius.all(new Radius.circular(10)),
                    color: CupertinoColors.activeBlue,
                    border: new Border.all(
                        width: 5, color: CupertinoColors.activeBlue)),
                child: new Text(
                  "选择结果为:$isOpen",
                  style: new TextStyle(
                    color: CupertinoColors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
//                color: CupertinoColors.activeBlue,
              ),
              onTap: () {
                setState(() {
                  isOpen = !isOpen;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
