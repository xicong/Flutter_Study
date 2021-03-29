import 'package:flutter_study/utils/title_utils.dart';
import 'package:flutter_study/comm/page/CodePreview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LearnCupertinoSlider extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _LearnCupertinoSlider();
  }
}

class _LearnCupertinoSlider extends State<LearnCupertinoSlider> {

  double value = 0;

  @override
  Widget build(BuildContext context) {
    return new CupertinoApp(
      home: new CupertinoPageScaffold(
        navigationBar: CommTitle.setCupertinoNavigationBar(context,"CupertinoSlider",new Callback(
          codeOnTap: (){
            CodePreview.go(context, "CupertinoSlider", "lib/widgets/cupertino/LearnCupertinoSlider.dart");
          }
        )),
        child: new ListView(
          children: <Widget>[
            new CupertinoSlider(
                value: value,
                min: 0.0,
                max: 100.0,
                divisions: 100,
                activeColor: CupertinoColors.activeBlue,
                onChanged: (double){
                  setState(() {
                    value=double.roundToDouble();
                  });
                }),
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
