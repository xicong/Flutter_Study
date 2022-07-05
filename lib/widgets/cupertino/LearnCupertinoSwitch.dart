import 'package:flutter_study/utils/title_utils.dart';
import 'package:flutter_study/comm/page/CodePreview.dart';
import 'package:flutter/cupertino.dart';

class LearnCupertinoSwitch extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LearnCupertinoSwitch();
  }
}

class _LearnCupertinoSwitch extends State<LearnCupertinoSwitch> {
  bool isOpen = false;

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoPageScaffold(
        navigationBar: CommTitle.setCupertinoNavigationBar(context, "CupertinoSwitch",Callback(
          codeOnTap: (){
            CodePreview.go(context, "CupertinoSwitch", "lib/widgets/cupertino/LearnCupertinoSwitch.dart");
          }
        )),
        child: ListView(
          children: <Widget>[
            CupertinoSwitch(
                value: isOpen,
                activeColor: CupertinoColors.activeBlue,
                onChanged: (bool) {
                  setState(() {
                    isOpen = bool;
                  });
                }),
            GestureDetector(
              child: Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    //用BoxDecoration的时候必须去掉外面的颜色用里面的颜色，不然会报错
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: CupertinoColors.activeBlue,
                    border: Border.all(
                        width: 5, color: CupertinoColors.activeBlue)),
                child: Text(
                  "选择结果为:$isOpen",
                  style: TextStyle(
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
