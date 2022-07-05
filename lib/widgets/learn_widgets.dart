import '../utils/page_status_weight_utils.dart';
import '../main.dart';
import 'package:flutter/material.dart';
import '../widgets/LearnCheckBox.dart';
import '../widgets/LearnFloatingActionButton.dart';
import '../widgets/LearnInkWell.dart';
import '../widgets/LearnRichText.dart';
import '../widgets/LearnTextField.dart';
import '../utils/listitem_utils.dart';
import '../utils/title_utils.dart';
import '../widgets/LearnRadioButton.dart';
import '../widgets/LearnSlider.dart';
import '../widgets/LearnImg.dart';
import '../layout/LearnScaffold.dart';
import '../widgets/LearnText.dart';
import '../widgets/LearnButton.dart';
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
import 'package:flutter_study/callback/PageStateCallBack.dart';

//基础组件
class LearnWidgets extends StatefulWidget {
  const LearnWidgets({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _LearnWidgets();
  }
}

class _LearnWidgets extends State<LearnWidgets> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommTitle.setMaterialAppBar(context, "基础Widgets", null),
      body: PageStatusWeight().showRequestStatus(PageStateCallBack(
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
    return ListView.builder(
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
        MainEntity(name: "Img",description: "用于展示图片的控件",widget: const LearnImg()),
        MainEntity(name: "Text",description: "最基本的文本显示组件",widget: const LearnText()),
        MainEntity(name: "Scaffold",description: "实现了基本的Material Design布局结构",widget: const LearnScaffold()),
        MainEntity(name: "Button",description: "一个按钮控件",widget: const LearnButton()),
        MainEntity(name: "Slider",description: "一个用来选择范围性数据的控件",widget: const LearnSlider()),
        MainEntity(name: "RadioButton",description: "单选按钮",widget: const LearnRadioButton()),
        MainEntity(name: "RichText",description: "具有复杂样式的文本显示组件",widget: const LearnRichText()),
        MainEntity(name: "TextField",description: "最常用的文本输入控件",widget: const LearnTextField()),
        MainEntity(name: "CheckBox",description: "一个简单的复选框控件",widget: const LearnCheckBox()),
        MainEntity(name: "FloatingActionButton",description: "浮动动作按钮",widget: const LearnFloatingActionButton()),
        MainEntity(name: "InkWell",description: "可以实现线框",widget: const LearnInkWell()),
        
        //Material风格的
        MainEntity(name: "MaterialColor",description: "定义单色以及有10中色调的色样",widget: const LearnMaterialColor()),
        MainEntity(name: "MaterialButton",description: "用于构建一个依赖于ButtonThem和Theme的按钮",widget: const LearnMaterialButton()),
        MainEntity(name: "MaterialPageRoute",description: "页面跳转携带参数替换整个屏幕的页面路由",widget: const LearnMaterialPageRoute()),
        MainEntity(name: "MaterialAccentColor",description: "用来定义单一带强色调，以及四种色调带色系",widget: const LearnMaterialAccentColor()),
        MainEntity(name: "MergeableMaterialItem",description: "MaterialSlice 和 MaterialGap的基本类型",widget: const LearnMergeableMaterialItem()),

        //Cupertino风格的
        MainEntity(name: "CupertinoButton",description: "ios风格的按钮",widget: const LearnCupertinoButton()),
        MainEntity(name: "CupertinoColors",description: "ios平台常用的颜色",widget: const LearnCupertinoColors()),
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
        MainEntity(name: "CupertinoTimePicker",description: "ios风格下的时间选择组件",widget: const LearnCupertinoTimePicker()),
        
      ];
    });
  }
  
}
