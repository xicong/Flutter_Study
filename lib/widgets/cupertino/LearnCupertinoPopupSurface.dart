import 'package:flutter/cupertino.dart';
import 'package:Flutter_Study/comm/CommTitle.dart';
import 'package:Flutter_Study/commpage/CodePreview.dart';

class LearnCupertinoPopupSurface extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _LearnCupertinoPopupSurface();
  }
}

class _LearnCupertinoPopupSurface extends State<LearnCupertinoPopupSurface> {
  bool isOpen = false;

  @override
  Widget build(BuildContext context) {
    return new CupertinoApp(
      home: new CupertinoPageScaffold(
        navigationBar: CommTitle.setCupertinoNavigationBar(context, "CupertinoPopupSurface",new Callback(
          codeOnTap: (){
            CodePreview.go(context, "CupertinoPopupSurface", "lib/widgets/cupertino/LearnCupertinoPopupSurface.dart");
          }
        )),
        child: new ListView(
          children: <Widget>[
            new Container(
              margin: EdgeInsets.all(10),
              child: new CupertinoPopupSurface(
                isSurfacePainted:false, //是否在这个表面的模糊背景上绘制半透明的白色
                child: new Container(
                  child: new Text("这是内容",
                    style: new TextStyle(
                        color: CupertinoColors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  color: CupertinoColors.activeBlue,
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(top: 100,bottom: 100),
//                margin: EdgeInsets.only(left: 20,right: 20,top: 20),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
