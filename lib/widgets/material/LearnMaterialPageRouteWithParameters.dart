import 'package:flutter_study/utils/title_utils.dart';
import 'package:flutter_study/utils/screen_utils.dart';
import 'package:flutter/material.dart';

class LearnMaterialPageRouteWithParameters extends StatefulWidget {
  String values;
  LearnMaterialPageRouteWithParameters({Key? key,required this.values}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _LearnMaterialPageRouteWithParameters();
  }
}
class _LearnMaterialPageRouteWithParameters extends State<LearnMaterialPageRouteWithParameters> {
  late String value;
  // _LearnMaterialPageRouteWithParameters(String v){
  //   value=v;
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommTitle.setMaterialAppBar(context, "MaterialPageRoute带参数跳转带新页面",null),
      body: Container(
        child: Text("带参数:$value",
          style: TextStyle(
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
