import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:ui';

import 'package:flutterdemo/comm/CommTitle.dart';

class LearnText extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _LearnText();
  }
}
class _LearnText extends State<LearnText> {

  //点击修改颜色的Text的颜色
  Color color=Colors.amberAccent;
  //点击更改文字大小的文字的大小，默认10
  double fontSize=10;
  //点击设置文字倾斜
  FontStyle fontStyle=FontStyle.normal;
  //点击设置文字下划线，上划线，删除线
//  var decoration=[TextDecoration.none,TextDecoration.underline,TextDecoration.overline,TextDecoration.lineThrough];
  var decorationValue=TextDecoration.none;

  //类似阿拉伯语反转
  var textDirection=TextDirection.rtl;

  //文本对齐方式
  var textAlign= TextAlign.start;

  //设置文字是否自动换行
  var softWrap=true;


  @override
  Widget build(BuildContext context) {

    //文字的背景色
    Paint paint = Paint();
    paint.color = Colors.blue;

    return new MaterialApp(
      home: new Scaffold(
        appBar: CommTitle.setMaterialAppBar(context, "Text",null),
        body: new ListView(
          children: <Widget>[//该listview的子控件数组为空会报错
            new Container(
              child: new Text('这是一个默认的Text'),
              decoration: new BoxDecoration(
                border: new Border.all(
                    color: Colors.blue,
                    width: 5),
                borderRadius: BorderRadius.all(new Radius.circular(5)),
                color: Colors.grey, //用了这个必须设置这个颜色去掉外面的颜色
              ),
//              color: Colors.blue,
              margin: EdgeInsets.only(top: 5,bottom: 5,left: 5,right: 5),
            ),
            new GestureDetector(
              child: new Container(
                decoration: new BoxDecoration(
                  border: new Border.all(
                      color: Colors.blue,
                      width: 5),
                  borderRadius: BorderRadius.all(new Radius.circular(5)),
                  color: Colors.white, //用了这个必须设置这个颜色去掉外面的颜色
                ),
//              color: Colors.blue,
                margin: EdgeInsets.only(top: 5,bottom: 5,left: 5,right: 5),
                child: new Text('color设置文字颜色,点击文字可以实现黄,蓝色的切换',
                  style: new TextStyle(
                      color: color   //文字颜色
                  ),
                ),
              ),
              onTap: (){
                setState(() {
                  if(color == Colors.amberAccent){
                    color = Colors.blue;
                  }else{
                    color = Colors.amberAccent;
                  }
                });
              },
            ),
            new GestureDetector(
              child: new Container(
                decoration: new BoxDecoration(
                  border: new Border.all(
                      color: Colors.blue,
                      width: 5),
                  borderRadius: BorderRadius.all(new Radius.circular(5)),
                  color: Colors.white, //用了这个必须设置这个颜色去掉外面的颜色
                ),
//              color: Colors.blue,
                margin: EdgeInsets.only(top: 5,bottom: 5,left: 5,right: 5),
                child: new Text('fontSize设置文字大小,默认文字大小为10,点击会一直变大到30,再恢复到10',
                  style: new TextStyle(
                      fontSize: fontSize     //字体大小
                  ),
                ),
              ),
              onTap: (){
                setState(() {
                  if(fontSize==30){
                    fontSize=10;
                  }else{
                    fontSize++;
                  }
                });
              },
            ),
            new GestureDetector(
              child:new Container(
                decoration: new BoxDecoration(
                  border: new Border.all(
                      color: Colors.blue,
                      width: 5),
                  borderRadius: BorderRadius.all(new Radius.circular(5)),
                  color: Colors.white, //用了这个必须设置这个颜色去掉外面的颜色
                ),
//              color: Colors.blue,
                margin: EdgeInsets.only(top: 5,bottom: 5,left: 5,right: 5),
                child: new Text('fontStyle点击文字倾斜/恢复',
                  style: new TextStyle(
                      fontStyle: fontStyle  //文字样式，斜体和正常
                  ),
                ),
              ),
              onTap: (){
                setState(() {
                  if(fontStyle==FontStyle.normal){
                    fontStyle=FontStyle.italic;
                  }else{
                    fontStyle=FontStyle.normal;
                  }
                });
              },
            ),
            new GestureDetector(
              child: new Container(
                decoration: new BoxDecoration(
                  border: new Border.all(
                      color: Colors.blue,
                      width: 5),
                  borderRadius: BorderRadius.all(new Radius.circular(5)),
                  color: Colors.white, //用了这个必须设置这个颜色去掉外面的颜色
                ),
//              color: Colors.blue,
                margin: EdgeInsets.only(top: 5,bottom: 5,left: 5,right: 5),
                child: new Text('decoration样式，点击可切换，带删除线，上划线，下划线',
                  style: new TextStyle(
                      decoration: decorationValue
                  ),
                ),
              ),
              onTap: (){
                setState(() {
                  switch(Random().nextInt(4)){
                    case 0:
                      decorationValue=TextDecoration.none;
                      break;
                    case 1:
                      decorationValue=TextDecoration.overline;
                      break;
                    case 2:
                      decorationValue=TextDecoration.underline;
                      break;
                    case 3:
                      decorationValue=TextDecoration.lineThrough;
                      break;
                  }
                });
              },
            ),
            new GestureDetector(
              child: new Container(
                decoration: new BoxDecoration(
                  border: new Border.all(
                      color: Colors.blue,
                      width: 5),
                  borderRadius: BorderRadius.all(new Radius.circular(5)),
                  color: Colors.white, //用了这个必须设置这个颜色去掉外面的颜色
                ),
//              color: Colors.blue,
                margin: EdgeInsets.only(top: 5,bottom: 5,left: 5,right: 5),
                child: new Text('textDirection文本方向,点击rtl/ltr',
                  textDirection: textDirection,//文本方向
                  style: new TextStyle(
//                  background: paint,
//                height: 1  //文字的高度，为字体高度的倍数
                  ),
                ),
              ),
              onTap: (){
                setState(() {
                  if(textDirection==TextDirection.rtl){
                    textDirection = TextDirection.ltr;
                  }else{
                    textDirection =TextDirection.rtl;
                  }
                });
              },
            ),
            new GestureDetector(
              child: new Container(
                decoration: new BoxDecoration(
                  border: new Border.all(
                      color: Colors.blue,
                      width: 5),
                  borderRadius: BorderRadius.all(new Radius.circular(5)),
                  color: Colors.white, //用了这个必须设置这个颜色去掉外面的颜色
                ),
//              color: Colors.blue,
                margin: EdgeInsets.only(top: 5,bottom: 5,left: 5,right: 5),
                child: new Text('textAlign/文本对齐方式  居中',
                  textAlign: textAlign,
                ),
              ),
              onTap: (){
                setState(() {
                  switch(Random().nextInt(6)){
                    case 0:
                      textAlign=TextAlign.start;
                      break;
                    case 1:
                      textAlign=TextAlign.end;
                      break;
                    case 2:
                      textAlign=TextAlign.left;
                      break;
                    case 3:
                      textAlign=TextAlign.right;
                      break;
                    case 4:
                      textAlign=TextAlign.center;
                      break;
                    case 5:
                      textAlign=TextAlign.justify;
                      break;
                  }
                });
              },
            ),
            new GestureDetector(
              child: new Container(
                decoration: new BoxDecoration(
                  border: new Border.all(
                      color: Colors.blue,
                      width: 5),
                  borderRadius: BorderRadius.all(new Radius.circular(5)),
                  color: Colors.white, //用了这个必须设置这个颜色去掉外面的颜色
                ),
//              color: Colors.blue,
                margin: EdgeInsets.only(top: 5,bottom: 5,left: 5,right: 5),
                child: new Text('softWrap:是否自动换行 false文字不考虑容器大小  单行显示   超出；屏幕部分将默认截断处理',
                  softWrap: softWrap,
                ),
              ),
              onTap: (){
                setState(() {
                  if(softWrap){
                    softWrap=false;
                  }else{
                    softWrap=true;
                  }
                });
              },
            )

//            new Flexible(
//              child: new Center(
//                child: new Text(
//                  '学习Text',
//                  softWrap: false, //是否自动换行 false文字不考虑容器大小  单行显示   超出；屏幕部分将默认截断处理
//                  overflow: TextOverflow
//                      .ellipsis, //文字超出屏幕之后的处理方式  TextOverflow.clip剪裁   TextOverflow.fade 渐隐  TextOverflow.ellipsis省略号
//                  textScaleFactor: 2.0, //字体显示的赔率
//                  maxLines: 10, //最大行数
//                  style: new TextStyle(
//                    decorationColor: const Color(0xffffffff), //线的颜色
//                    background:new Paint(),
//                    decorationStyle: TextDecorationStyle
//                        .solid, //文字装饰的风格  dashed,dotted虚线(简短间隔大小区分)  double三条线  solid两条线
//                    wordSpacing: 0.0, //单词间隙(负值可以让单词更紧凑)
//                    letterSpacing: 0.0, //字母间隙(负值可以让字母更紧凑)
//                    fontWeight: FontWeight.w900, //字体粗细  粗体和正常
//                  ),
//                ),
//              ),
//              flex: 1,
//            ),
////        new RichText()  和下一行同样效果实现同一text的不同效果
//            new Text.rich(
//              new TextSpan(
//                text: 'TextSpan',
//                style: new TextStyle(
//                  color: Colors.blue,
//                  fontSize: 30.0,
//                  decoration: TextDecoration.none,
//                ),
//                children: <TextSpan>[
//                  new TextSpan(
//                    text: '拼接1',
//                  ),
//                  new TextSpan(
//                    text: '拼接2',
//                  ),
//                  new TextSpan(
//                    text: '拼接3',
//                  ),
//                  new TextSpan(
//                    text: '拼接4',
//                  ),
//                  new TextSpan(
//                    text: '拼接5',
//                  ),
//                  new TextSpan(
//                    text: '拼接6',
//                  ),
//                  new TextSpan(
//                    text: '拼接7',
//                    style: new TextStyle(
//                      color: Colors.yellow,
//                    ),
//                    recognizer:new TapGestureRecognizer()..onTap=(){//增加一个点击事件
//                      print('@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@');
//                    },
//                  ),
//                ],
//              ),
//            ),
          ],
        ),
      ),
    );
  }
}
