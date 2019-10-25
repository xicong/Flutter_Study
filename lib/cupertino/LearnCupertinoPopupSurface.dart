import 'package:flutter/cupertino.dart';
import 'package:flutterdemo/comm/CommTitle.dart';

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
        navigationBar: CommTitle.setCupertinoNavigationBar(context, "CupertinoPopupSurface"),
        child: new ListView(
          children: <Widget>[
            new CupertinoPopupSurface(
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
            )
          ],
        ),
      ),
    );
  }
}
