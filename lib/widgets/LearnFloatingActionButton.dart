import 'package:flutter/material.dart';
import 'package:flutter_study/utils/title_utils.dart';

import '../comm/page/CodePreview.dart';
import '../utils/print_utils.dart';
class LearnFloatingActionButton extends StatefulWidget{
  const LearnFloatingActionButton({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _LearnFloatingActionButton();
  }
}
class _LearnFloatingActionButton extends State<LearnFloatingActionButton>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommTitle.setMaterialAppBar(context, "FloatingActionButton", Callback(codeOnTap: (){
        CodePreview.go(context, "FloatingActionButton", "lib/widgets/LearnFloatingActionButton.dart");
      })),
      body: Center(
        child:FloatingActionButton(
          tooltip: '长按之后提示的文字',//长按提示的文字
          foregroundColor: Colors.red,//设置显示图标或者文本的颜色//前提是子child没有设置
          backgroundColor: Colors.blueAccent,//设置按钮的背景色
//          heroTag: ,//类似于一个标识
          elevation: 10.0,//设置阴影
          highlightElevation: 50.0,
          shape: const CircleBorder(),
//          isExtended: true,
          onPressed: (){
            showPrint('aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa');
          },
          child: const Icon(Icons.ac_unit),
        ),
      ),
    );
  }
}

//另外：Flutter还提供另一个扩展的FloatActionButton.extended   可以实现改shape  加img