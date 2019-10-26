import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterdemo/comm/CommTitle.dart';

class LearnCupertinoSegmentedControl extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _LearnCupertinoSegmentedControl();
  }
}

class _LearnCupertinoSegmentedControl
    extends State<LearnCupertinoSegmentedControl> {
  String value = "1";

  @override
  Widget build(BuildContext context) {
    return new CupertinoApp(
      home: new CupertinoPageScaffold(
        navigationBar: CommTitle.setCupertinoNavigationBar(context, "CupertinoSegmentedControl"),
        child: new ListView(
          children: <Widget>[
            new Container(
              margin: EdgeInsets.only(top: 50,bottom: 20),
              child: new CupertinoSegmentedControl(
                  children: {
                    "1": new Container(
                      width: 150,
                      child: new Text("1"),
                      alignment: Alignment.center,
                    ),
                    "2": new Text("2"),
                    "3": new Text("3"),
                    "4": new Text("4"),
                  },
                  pressedColor: CupertinoColors.destructiveRed,  //按下的颜色
                  borderColor: CupertinoColors.activeBlue,  //边框的颜色
                  selectedColor: CupertinoColors.systemBlue,  //选中的颜色
                  unselectedColor: CupertinoColors.white,  //没选中的颜色
                  groupValue: value,
                  onValueChanged: (v) {
                    setState(() {
                      value = v;
                    });
                  }),
            ),
            new Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              alignment: Alignment.center,
              decoration: new BoxDecoration(  //用BoxDecoration的时候必须去掉外面的颜色用里面的颜色，不然会报错
                  borderRadius: new BorderRadius.all(new Radius.circular(10)),
                  color: CupertinoColors.activeBlue,
                  border: new Border.all(width: 5,color: CupertinoColors.activeBlue)
              ),
              child: new Text("选择结果为:$value",
                style: new TextStyle(
                  color: CupertinoColors.white,
                  fontWeight: FontWeight.bold,
                ),),
//                color: CupertinoColors.activeBlue,
            )
          ],
        ),
      ),
    );
  }
}
