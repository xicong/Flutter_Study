import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../comm/page/CodePreview.dart';
import '../utils/title_utils.dart';
class LearnButton extends StatefulWidget{
  const LearnButton({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _LearnButton();
  }
}
class _LearnButton extends State<LearnButton>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommTitle.setMaterialAppBar(context, "Button",Callback(codeOnTap: (){
        CodePreview.go(context, "Button", "lib/widgets/LearnButton.dart");
      })),
      body: Column(
        children: <Widget>[
          Center(
            child: ElevatedButton(
              onPressed: (){
                if (kDebugMode) {
                  print('点击3333333333333333333333333333333333333333333333333333333333333333333333333333333');
                }
              },
              // color: Colors.black,//按钮的背景颜色
              // padding: const EdgeInsets.all(50.0),
              // textColor: Colors.white,//文字的颜色
              // textTheme:ButtonTextTheme.normal ,//按钮的主题
              // onHighlightChanged: (bool b){//水波纹高亮变化回调
              // },
              // disabledTextColor: Colors.black54,//按钮禁用时候文字的颜色
              // disabledColor: Colors.black54,//按钮被禁用的时候显示的颜色
              // highlightColor: Colors.yellowAccent,//点击或者toch控件高亮的时候显示在控件上面，水波纹下面的颜色
              // splashColor: Colors.white,//水波纹的颜色
              // colorBrightness: Brightness.light,//按钮主题高亮
              // elevation: 10.0,//按钮下面的阴影
              // highlightElevation: 10.0,//高亮时候的阴影
              // disabledElevation: 10.0,//按钮距离里面内容的内边距
              child: const Text('B'),//按下的时候的阴影
//              shape:,//设置形状  LearnMaterial中有详解
            ),
          )
        ],
      ),
    );
  }
}

//① FlatButton:
//没有阴影，就是一个平滑的按钮，常用的比如一些界面上面的文字区域点击可以使用它，还有水波纹效果。
//dialog有确定和取消两个选项，5.0以上的手机，触摸或者点击这两个选项是有水波纹一样的效果，我们可以用FlatButton。
//toolbar上面显示的文本触摸或者点击也有这样的效果，我们也都可以通过FlatButton实现。
//② RawMaterialButton:
//RaisedButton 和 FlatButton 基于当前Theme和ButtonThem配置一个RawMaterialButton。
//Flatbutton最普通，RaisedButton还能配置ButtonTheme，是Flatbutton的一个升级版本，RawMaterialButton是他们两个的升级版本。