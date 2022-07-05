import 'package:flutter_study/utils/title_utils.dart';
import 'package:flutter_study/comm/page/CodePreview.dart';
import 'package:flutter/cupertino.dart';

class LearnCupertinoPopupSurface extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LearnCupertinoPopupSurface();
  }
}

class _LearnCupertinoPopupSurface extends State<LearnCupertinoPopupSurface> {
  bool isOpen = false;

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoPageScaffold(
        navigationBar: CommTitle.setCupertinoNavigationBar(context, "CupertinoPopupSurface",Callback(
          codeOnTap: (){
            CodePreview.go(context, "CupertinoPopupSurface", "lib/widgets/cupertino/LearnCupertinoPopupSurface.dart");
          }
        )),
        child: ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(10),
              child: CupertinoPopupSurface(
                isSurfacePainted:false, //是否在这个表面的模糊背景上绘制半透明的白色
                child: Container(
                  child: Text("这是内容",
                    style: TextStyle(
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
