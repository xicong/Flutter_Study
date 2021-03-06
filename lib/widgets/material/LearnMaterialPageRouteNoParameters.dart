import 'package:flutter_study/utils/title_utils.dart';
import 'package:flutter_study/utils/screen_utils.dart';
import 'package:flutter/material.dart';

class LearnMaterialPageRouteNoParameters extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _LearnMaterialPageRouteNoParameters();
  }
}

class _LearnMaterialPageRouteNoParameters
    extends State<LearnMaterialPageRouteNoParameters> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar:
          CommTitle.setMaterialAppBar(context, "MaterialPageRoute不带参数跳转带新页面",null),
      body: new Container(
        child: new Text(
          "不带参数",
          style: new TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        width: ScreenUtils.getScreenWidth(context),
        height: ScreenUtils.getScreenHeight(context),
        color: Colors.blue,
        alignment: Alignment.center,
      ),
    );
  }
}
