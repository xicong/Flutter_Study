import 'package:flutter_study/utils/title_utils.dart';
import 'package:flutter_study/comm/page/CodePreview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LearnCupertinoSegmentedControl extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LearnCupertinoSegmentedControl();
  }
}

class _LearnCupertinoSegmentedControl
    extends State<LearnCupertinoSegmentedControl> {
  String value = "1";

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoPageScaffold(
        navigationBar: CommTitle.setCupertinoNavigationBar(context, "CupertinoSegmentedControl",Callback(
          codeOnTap: (){
            CodePreview.go(context, "CupertinoSegmentedControl", "lib/widgets/cupertino/LearnCupertinoSegmentedControl.dart");
          }
        )),
        child: ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 50,bottom: 20),
              child: CupertinoSegmentedControl(
                  children: {
                    "1": Container(
                      width: 150,
                      alignment: Alignment.center,
                      child: const Text("1"),
                    ),
                    "2": Text("2"),
                    "3": Text("3"),
                    "4": Text("4"),
                  },
                  pressedColor: CupertinoColors.destructiveRed,  //按下的颜色
                  borderColor: CupertinoColors.activeBlue,  //边框的颜色
                  selectedColor: CupertinoColors.systemBlue,  //选中的颜色
                  unselectedColor: CupertinoColors.white,  //没选中的颜色
                  groupValue: value,
                  onValueChanged: (v) {
                    setState(() {
                      // value = v;
                    });
                  }),
            ),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              alignment: Alignment.center,
              decoration: BoxDecoration(  //用BoxDecoration的时候必须去掉外面的颜色用里面的颜色，不然会报错
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: CupertinoColors.activeBlue,
                  border: Border.all(width: 5,color: CupertinoColors.activeBlue)
              ),
              child: Text("选择结果为:$value",
                style: TextStyle(
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
