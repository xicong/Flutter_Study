import 'package:flutter/material.dart';
class LearnFloatingActionButton extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _LearnFloatingActionButton();
  }
}
class _LearnFloatingActionButton extends State<LearnFloatingActionButton>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('FloatingActionButton'),
        leading: new GestureDetector(
          child: Icon(Icons.arrow_back_ios),
          onTap: (){
            Navigator.pop(context);
          },
        ),
      ),
      body: new Center(
        child:new FloatingActionButton(
          child: new Icon(Icons.ac_unit),//子Widet 可以是文本或者图片
          tooltip: '长按之后提示的文字',//长按提示的文字
          foregroundColor: Colors.red,//设置显示图标或者文本的颜色//前提是子child没有设置
          backgroundColor: Colors.blueAccent,//设置按钮的背景色
//          heroTag: ,//类似于一个标识
          elevation: 10.0,//设置阴影
          highlightElevation: 50.0,
          shape: const CircleBorder(),
//          isExtended: true,
          onPressed: (){
            print('aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa');
          },
        ),
      ),
    );
  }
}

//另外：Flutter还提供另一个扩展的FloatActionButton.extended   可以实现改shape  加img