import 'package:Flutter_Study/comm/CommTitle.dart';
import 'package:Flutter_Study/utils/ScreenUtils.dart';
import 'package:flutter/material.dart';

class LearnMaterialPageRouteWithParameters extends StatefulWidget {
  String value;
  LearnMaterialPageRouteWithParameters(String v){
    value=v;
  }
  @override
  State<StatefulWidget> createState() {
    return new _LearnMaterialPageRouteWithParameters(value);
  }
}
class _LearnMaterialPageRouteWithParameters extends State<LearnMaterialPageRouteWithParameters> {
  String value;
  _LearnMaterialPageRouteWithParameters(String v){
    value=v;
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: CommTitle.setMaterialAppBar(context, "MaterialPageRoute带参数跳转带新页面",null),
      body: new Container(
        child: new Text("带参数:$value",
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
