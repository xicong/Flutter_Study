import 'package:flutter/material.dart';
import 'package:flutterdemo/widgets/LearnCheckBox.dart';
import 'package:flutterdemo/widgets/LearnFloatingActionButton.dart';
import 'package:flutterdemo/widgets/LearnInkWell.dart';
import 'package:flutterdemo/widgets/LearnRichText.dart';
import 'package:flutterdemo/widgets/LearnTextField.dart';
import 'package:flutterdemo/comm/CommListItem.dart';
import 'package:flutterdemo/comm/CommTitle.dart';
import 'package:flutterdemo/widgets/LearnRadioButton.dart';
import 'package:flutterdemo/widgets/LearnSlider.dart';
import 'package:flutterdemo/widgets/LearnImg.dart';
import 'package:flutterdemo/widgets/LearnScaffold.dart';
import 'package:flutterdemo/widgets/LearnText.dart';
import 'package:flutterdemo/widgets/LearnButton.dart';

//基础组件
class LearnWidgets extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _LearnWidgets();
  }
}
class _LearnWidgets extends State<LearnWidgets>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: CommTitle.setMaterialAppBar(context, "基础Widgets",null),
      body: new ListView(
        children: <Widget>[
          CommListItem.setMaterialListItem(
              context, "Img", "用于展示图片的控件", new LearnImg()),
          CommListItem.setMaterialListItem(
              context, "Text", "最基本的文本显示组件", new LearnText()),
          CommListItem.setMaterialListItem(context, "Scaffold",
              "实现了基本的Material Design布局结构", new LearnScaffold()),
          CommListItem.setMaterialListItem(
              context, "Button", "一个按钮控件", new LearnButton()),
          CommListItem.setMaterialListItem(
              context, "Slider", "一个用来选择范围性数据的控件", new LearnSlider()),
          CommListItem.setMaterialListItem(
              context, "RadioButton", "单选按钮", new LearnRadioButton()),
          CommListItem.setMaterialListItem(
              context, "RichText", "具有复杂样式的文本显示组件", new LearnRichText()),
          CommListItem.setMaterialListItem(
              context, "TextField", "最常用的文本输入控件", new LearnTextField()),
          CommListItem.setMaterialListItem(
              context, "CheckBox", "一个简单的复选框控件", new LearnCheckBox()),
          CommListItem.setMaterialListItem(context, "FloatingActionButton",
              "浮动动作按钮", new LearnFloatingActionButton()),
          CommListItem.setMaterialListItem(
              context, "InkWell", "可以实现线框，水波纹等一些特殊效果", new LearnInkWell()),
        ],
      ),
    );
  }
}