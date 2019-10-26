import 'package:flutter/material.dart';
import 'package:flutterdemo/comm/CommListItem.dart';
import 'package:flutterdemo/comm/CommTitle.dart';
import 'package:flutterdemo/element/form/LearnRadioButton.dart';
import 'package:flutterdemo/element/form/LearnSlider.dart';
import 'package:flutterdemo/element/frame/LearnTable.dart';
import 'package:flutterdemo/element/media/LearnImg.dart';
import 'package:flutterdemo/themes/cupertino/LearnCupertinoApp.dart';
import 'package:flutterdemo/themes/material/LearnMaterialApp.dart';
import 'package:flutterdemo/element/form/LearnText.dart';
import 'package:flutterdemo/element/form/LearnButton.dart';

class LearnElement extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _LearnElement();
  }
}
class _LearnElement extends State<LearnElement>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: CommTitle.setMaterialAppBar(context, "Themes"),
      body: new ListView(
        children: <Widget>[
          CommListItem.setMaterialListItem(
              context, "Text", "最基本的文本显示组件", new LearnText()),
          CommListItem.setMaterialListItem(
              context, "Button", "一个按钮控件", new LearnButton()),
          CommListItem.setMaterialListItem(
              context, "Slider", "一个用来选择范围性数据的控件", new LearnSlider()),
          CommListItem.setMaterialListItem(
              context, "RadioButton", "Material Design风格的单选按钮", new LearnRadioButton()),
          CommListItem.setMaterialListItem(
              context, "Img", "用于展示图片的控件", new LearnImg()),
          CommListItem.setMaterialListItem(
              context, "Table", "一个可以显示表格控件的布局", new LearnTable()),
        ],
      ),
    );
  }
}