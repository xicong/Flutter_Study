import 'package:flutter/material.dart';
class LearnContainer extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new _LearnContainer();
  }
}
class _LearnContainer extends State<LearnContainer>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Container'),
        leading: new GestureDetector(
          child: Icon(Icons.arrow_back_ios),
          onTap: (){
            Navigator.pop(context);
          },
        ),
      ),
      body: new Container(
        width: 10.0,
        height: 10.0,
        alignment: new Alignment(0.0, 0.0),//设置子控件的位置
//      color: Colors.brown,
        child: new Text('这是一个Container',
          textAlign:TextAlign.center ,//设置文字居中
          style: new TextStyle(
            color: Colors.white,
          ),
        ),//显示的内容
        padding: EdgeInsets.all(0.0),//设置子控件padding
        margin: EdgeInsets.all(50.0),//设置子控件margin
//      foregroundDecoration:,  设置子控件上面的装饰
//      constraints:  设置子控件尺寸约束的条件 比如 宽高
        decoration: new BoxDecoration(//设置子控件背后的装饰
            color: Colors.blue,  //和Container下面的color会冲突 具体原因不详
            border: new Border.all(//添加边框
              width: 10.0,//边框宽度
              color: Colors.green,//边框颜色
            ),
            borderRadius: new BorderRadius.all(Radius.circular(20.0)),//设置圆角
            boxShadow: <BoxShadow>[//设置阴影
//          new BoxShadow(
//            color: Colors.black,
//            blurRadius: 20.0,
//          ),
              new BoxShadow(
                color: Colors.red,//阴影颜色
                blurRadius: 20.0,//阴影大小
              ),
//          new BoxShadow(
//            color: Colors.yellowAccent,
//            blurRadius: 20.0,
//          ),
//          new BoxShadow(
//            color: Colors.blue,
//            blurRadius: 30.0,
//          )
            ]
        ),
      ),
    );
  }
}