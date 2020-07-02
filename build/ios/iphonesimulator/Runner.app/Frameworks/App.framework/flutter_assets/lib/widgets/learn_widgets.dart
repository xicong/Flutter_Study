import 'package:Flutter_Study/comm/page_status_weight.dart';
import 'package:Flutter_Study/main.dart';
import 'package:flutter/material.dart';
import 'package:Flutter_Study/widgets/LearnCheckBox.dart';
import 'package:Flutter_Study/widgets/LearnFloatingActionButton.dart';
import 'package:Flutter_Study/widgets/LearnInkWell.dart';
import 'package:Flutter_Study/widgets/LearnRichText.dart';
import 'package:Flutter_Study/widgets/LearnTextField.dart';
import 'package:Flutter_Study/comm/CommListItem.dart';
import 'package:Flutter_Study/comm/CommTitle.dart';
import 'package:Flutter_Study/widgets/LearnRadioButton.dart';
import 'package:Flutter_Study/widgets/LearnSlider.dart';
import 'package:Flutter_Study/widgets/LearnImg.dart';
import 'package:Flutter_Study/layout/LearnScaffold.dart';
import 'package:Flutter_Study/widgets/LearnText.dart';
import 'package:Flutter_Study/widgets/LearnButton.dart';
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
      body: PageStatusWeight().showRequestStatus(CallBack(
        asynchronousTasks: (){
          return initData();
        },
        asynchronousResults: (data){
          return showResultWeight(data);
        }
      ))
    );
  }
  
  Widget showResultWeight(data){
    var mData = data as List<MainEntity>;
    return new ListView.builder(
        itemCount: mData.length,
        itemBuilder: (context,index){
          return CommListItem.setCupertinoListItem(context, mData[index].name,
              mData[index].description, mData[index].widget);
        });
  }

  Future<List<MainEntity>> initData(){
    return Future<List<MainEntity>>((){
      return [
        //常用的
        MainEntity(name: "Img",description: "用于展示图片的控件",widget: LearnImg()),
        MainEntity(name: "Text",description: "最基本的文本显示组件",widget: LearnText()),
        MainEntity(name: "Scaffold",description: "实现了基本的Material Design布局结构",widget: LearnScaffold()),
        MainEntity(name: "Button",description: "一个按钮控件",widget: LearnButton()),
        MainEntity(name: "Slider",description: "一个用来选择范围性数据的控件",widget: LearnSlider()),
        MainEntity(name: "RadioButton",description: "单选按钮",widget: LearnRadioButton()),
        MainEntity(name: "RichText",description: "具有复杂样式的文本显示组件",widget: LearnRichText()),
        MainEntity(name: "TextField",description: "最常用的文本输入控件",widget: LearnTextField()),
        MainEntity(name: "CheckBox",description: "一个简单的复选框控件",widget: LearnCheckBox()),
        MainEntity(name: "FloatingActionButton",description: "浮动动作按钮",widget: LearnFloatingActionButton()),
        MainEntity(name: "InkWell",description: "可以实现线框",widget: LearnInkWell()),
        
        //Material风格的
        MainEntity(name: "MaterialColor",description: "定义单色以及有10中色调的色样",widget: LearnMaterialColor()),
        MainEntity(name: "MaterialButton",description: "用于构建一个依赖于ButtonThem和Theme的按钮",widget: LearnMaterialButton()),
        MainEntity(name: "MaterialPageRoute",description: "页面跳转携带参数替换整个屏幕的页面路由",widget: LearnMaterialPageRoute()),
        MainEntity(name: "MaterialAccentColor",description: "用来定义单一带强色调，以及四种色调带色系",widget: LearnMaterialAccentColor()),
        MainEntity(name: "MergeableMaterialItem",description: "MaterialSlice 和 MaterialGap的基本类型",widget: LearnMergeableMaterialItem()),

        //Cupertino风格的
        MainEntity(name: "CupertinoButton",description: "ios风格的按钮",widget: LearnCupertinoButton()),
        MainEntity(name: "CupertinoColors",description: "ios平台常用的颜色",widget: LearnCupertinoColors()),
        MainEntity(name: "CupertinoIcons",description: "ios平台常用的图标",widget: LearnCupertinoIcons()),
        MainEntity(name: "CupertinoNavigationBar",description: "ios风格的导航栏",widget: LearnCupertinoNavigationBar()),
        MainEntity(name: "CupertinoPageRoute",description: "ios风格全屏切换路由的滑动动画",widget: LearnCupertinoPageRoute()),
        MainEntity(name: "CupertinoPageScaffold",description: "ios应用程序的页面布局",widget: LearnCupertinoPageScaffold()),
        MainEntity(name: "CupertinoPicker",description: "ios风格的选择器",widget: LearnCupertinoPicker()),
        MainEntity(name: "CupertinoSlider",description: "ios风格下的滑动条，用来选择范围内的数据",widget: LearnCupertinoSlider()),
        MainEntity(name: "CupertinoSwitch",description: "ios风格下的Switch组件",widget: LearnCupertinoSwitch()),
        MainEntity(name: "CupertinoPopupSurface",description: "ios弹出式表面",widget: LearnCupertinoPopupSurface()),
        MainEntity(name: "CupertinoScrollbar",description: "ios样式风格的滚动条",widget: LearnCupertinoScrollbar()),
        MainEntity(name: "CupertinoSegmentedControl",description: "ios样式风格展示一些用户可以选择的选项",widget: LearnCupertinoSegmentedControl()),
        MainEntity(name: "CupertinoSliverNavigationBar",description: "ios-11风格下拥有一个较大标题块的导航栏目",widget: LearnCupertinoSliverNavigationBar()),
        MainEntity(name: "CupertinoTimePicker",description: "ios风格下的时间选择组件",widget: LearnCupertinoTimePicker()),
        
      ];
    });
  }
  
}
