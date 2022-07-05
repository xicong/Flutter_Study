import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_study/utils/title_utils.dart';

import '../comm/page/CodePreview.dart';
class LearnInkWell extends StatefulWidget{
  const LearnInkWell({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _LearnInkWell();
  }
}
class _LearnInkWell extends State<StatefulWidget>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommTitle.setMaterialAppBar(context, "InkWell", Callback(codeOnTap: (){
        CodePreview.go(context, "InkWell", "lib/widgets/LearnInkWell.dart");
      })),
      body:Column(
        children: <Widget>[
          Center(
            child:Material(
              color: Colors.yellow,
              child: InkWell(
                onTap: (){
                  if (kDebugMode) {
                    print('###########################点击了##################################');
                  }
                },
                child: Container(//不要在这里设置背景色，for则会遮挡水波纹效果,如果设置的话尽量设置Material下面的color来实现背景色
                  width: 300.0,
                  height: 100.0,
                  margin: const EdgeInsets.all(0.0),
                ),
              ),
            ),
          ),
          Center(
            child: Material(
              child: Ink(//INK可以实现装饰容器，实现矩形  设置背景色
                color: Colors.black,
                child:InkWell(
                  onTap: (){
                    if (kDebugMode) {
                      print("@@@@@@@@@@@@@@@@@@@@@@@@@@@点击了@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
                    }
                  },
                  child: const SizedBox(
                    width: 300.0,
                    height: 100.0,
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: Material(
              child: Ink(//用ink圆角矩形
//                color: Colors.red,
                decoration: const BoxDecoration(
                  /**
                   * assert(color == null || decoration == null,'Cannot provide both a color and
                   * a decoration\n'The color argument is just a shorthand
                   * for "decoration: BoxDecoration(color: color)".')
                   * 在dart中使用assert 语句来中断正常的执行流程。
                   * “不能同时”使用Ink的变量color属性以及decoration属性，“两个只能存在一个”。
                   */
                  color: Colors.purple,
                  borderRadius:BorderRadius.all(Radius.circular(20.0)),
                ),
                child: InkWell(
                  borderRadius:BorderRadius.circular(20.0),//给水波纹也设置同样的圆角
                  onTap: (){
                    if (kDebugMode) {
                      print('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');
                    }
                  },
                  child: Container(
                    width: 300.0,
                    height: 100.0,
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: Material(
              child:Ink(
                decoration: const BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                ),
                child:InkResponse(
                  borderRadius: const BorderRadius.all(Radius.circular(30.0)),
//                  highlightColor: Colors.yellowAccent,//点击或者toch控件高亮时显示的控件在控件上层,水波纹下层
                  highlightShape: BoxShape.rectangle,//点击或者toch控件高亮的shape形状
                  //.InkResponse内部的radius这个需要注意的是，我们需要半径大于控件的宽，如果radius过小，显示的水波纹就是一个很小的圆，
                  radius: 300.0,//水波纹的半径
                  splashColor: Colors.black,//水波纹的颜色
                  containedInkWell: true,//true表示要剪裁水波纹响应的界面   false不剪裁  如果控件是圆角不剪裁的话水波纹是矩形
                  onTap: (){
                    print('！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！');
                  },
                  child: Container(//1.不能在InkResponse的child容器内部设置装饰器颜色，否则会遮盖住水波纹颜色的，containedInkWell设置为false就能看到是否是遮盖了。
                    width: 300.0,
                    height: 100.0,
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: Material(
              child:Ink(
                decoration: const BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                ),
                child:InkResponse(
                  borderRadius: const BorderRadius.all(Radius.circular(30.0)),
                  highlightColor: Colors.yellowAccent,//点击或者toch控件高亮时显示的控件在控件上层,水波纹下层
                  highlightShape: BoxShape.rectangle,//点击或者toch控件高亮的shape形状
                  //.InkResponse内部的radius这个需要注意的是，我们需要半径大于控件的宽，如果radius过小，显示的水波纹就是一个很小的圆，
                  radius: 0.0,//水波纹的半径
//                  splashColor: Colors.black,//水波纹的颜色
                  containedInkWell: true,//true表示要剪裁水波纹响应的界面   false不剪裁  如果控件是圆角不剪裁的话水波纹是矩形
                  onTap: (){
                    if (kDebugMode) {
                      print('！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！');
                    }
                  },
                  child: const SizedBox(//1.不能在InkResponse的child容器内部设置装饰器颜色，否则会遮盖住水波纹颜色的，containedInkWell设置为false就能看到是否是遮盖了。
                    width: 300.0,
                    height: 100.0,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}