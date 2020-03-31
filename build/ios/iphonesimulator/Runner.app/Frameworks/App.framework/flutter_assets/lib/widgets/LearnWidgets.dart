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
import 'package:flutterdemo/layout/LearnScaffold.dart';
import 'package:flutterdemo/widgets/LearnText.dart';
import 'package:flutterdemo/widgets/LearnButton.dart';
import 'cupertino/LearnCupertinoButton.dart';
import 'cupertino/LearnCupertinoColors.dart';
import 'cupertino/LearnCupertinoIcons.dart';
import 'cupertino/LearnCupertinoNavigationBar.dart';
import 'cupertino/LearnCupertinoPageRoute.dart';
import 'cupertino/LearnCupertinoPageScaffold.dart';
import 'cupertino/LearnCupertinoPicker.dart';
import 'cupertino/LearnCupertinoPopupSurface.dart';
import 'cupertino/LearnCupertinoScrollbar.dart';
import 'cupertino/LearnCupertinoSegmentedControl.dart';
import 'cupertino/LearnCupertinoSlider.dart';
import 'cupertino/LearnCupertinoSliverNavigationBar.dart';
import 'cupertino/LearnCupertinoSwitch.dart';
import '../layout/LearnCupertinoTabBar.dart';
import '../layout/LearnCupertinoTabScaffold.dart';
import '../layout/LearnCupertinoTabView.dart';
import 'cupertino/LearnCupertinoTimePicker.dart';
import 'material/LearnMaterialAccentColor.dart';
import 'material/LearnMaterialButton.dart';
import 'material/LearnMaterialColor.dart';
import 'material/LearnMaterialPageRoute.dart';
import 'material/LearnMergeableMaterialItem.dart';

//基础组件
class LearnWidgets extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LearnWidgets();
  }
}

class _LearnWidgets extends State<LearnWidgets> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: CommTitle.setMaterialAppBar(context, "基础Widgets", null),
      body: new ListView(
        children: <Widget>[
          //常用的
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


          //Material风格的
          CommListItem.setMaterialListItem(
            context,
            "MaterialColor",
            "定义单色以及有10中色调的色样",
            new LearnMaterialColor(),
          ),
          CommListItem.setMaterialListItem(context, "MaterialButton",
              "用于构建一个依赖于ButtonThem和Theme的按钮", new LearnMaterialButton()),
          CommListItem.setMaterialListItem(context, "MaterialPageRoute",
              "页面跳转携带参数替换整个屏幕的页面路由", new LearnMaterialPageRoute()),
          CommListItem.setMaterialListItem(context, "MaterialAccentColor",
              "用来定义单一带强色调，以及四种色调带色系", new LearnMaterialAccentColor()),
          CommListItem.setMaterialListItem(
              context,
              "MergeableMaterialItem",
              "MaterialSlice 和 MaterialGap的基本类型",
              new LearnMergeableMaterialItem()),
          
          

          //Cupertino风格的
          CommListItem.setCupertinoListItem(context, "CupertinoButton",
              "ios风格的按钮", new LearnCupertinoButton()),
          CommListItem.setCupertinoListItem(context, "CupertinoColors",
              "ios平台常用的颜色", new LearnCupertinoColors()),
          CommListItem.setCupertinoListItem(context, "CupertinoIcons",
              "ios平台常用的图标", new LearnCupertinoIcons()),
          CommListItem.setCupertinoListItem(context, "CupertinoNavigationBar",
              "ios风格的导航栏", new LearnCupertinoNavigationBar()),
          CommListItem.setCupertinoListItem(context, "CupertinoPageRoute",
              "ios风格全屏切换路由的滑动动画", new LearnCupertinoPageRoute()),
          CommListItem.setCupertinoListItem(context, "CupertinoPageScaffold",
              "ios应用程序的页面布局", new LearnCupertinoPageScaffold()),
          CommListItem.setCupertinoListItem(context, "CupertinoPicker",
              "ios风格的选择器", new LearnCupertinoPicker()),
          CommListItem.setCupertinoListItem(context, "CupertinoSlider",
              "ios风格下的滑动条，用来选择范围内的数据", new LearnCupertinoSlider()),
          CommListItem.setCupertinoListItem(context, "CupertinoSwitch",
              "ios风格下的Switch组件", new LearnCupertinoSwitch()),
          CommListItem.setCupertinoListItem(context, "CupertinoPopupSurface",
              "ios弹出式表面", new LearnCupertinoPopupSurface()),
          CommListItem.setCupertinoListItem(context, "CupertinoScrollbar",
              "ios样式风格的滚动条", new LearnCupertinoScrollbar()),
          CommListItem.setCupertinoListItem(
              context,
              "CupertinoSegmentedControl",
              "ios样式风格展示一些用户可以选择的选项",
              new LearnCupertinoSegmentedControl()),
          CommListItem.setCupertinoListItem(
              context,
              "CupertinoSliverNavigationBar",
              "ios-11风格下拥有一个较大标题块的导航栏目",
              new LearnCupertinoSliverNavigationBar()),
          CommListItem.setCupertinoListItem(context, "CupertinoTimePicker",
              "ios风格下的时间选择组件", new LearnCupertinoTimePicker()),


        ],
      ),
    );
  }
}
