import 'package:flutter/material.dart';
import 'package:flutterdemo/comm/CommTitle.dart';
class LearnImg extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return new _LearnImg();
  }
}
class _LearnImg extends State<LearnImg>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: CommTitle.setMaterialAppBar(context, "Img",null),
      body: new Container(
        color: Colors.white,
        child:new Column(
          children: <Widget>[
            new Text(
              '加载assets的图片',
              style: new TextStyle(
                fontSize: 40.0,
                color: Colors.black,
                decoration:TextDecoration.none,
              ),
            ),
            new Image.asset(
              'images/ic_nav_my_pressed.png',
              width: 100.0,
              height: 100.0,
              repeat:ImageRepeat.noRepeat ,//当一个图片占不满容器的时候这个可以控制图片水平ImageRepeat.repeatX， 或者垂直ImageRepeat.repeatY  或者依次排列ImageRepeat.repeat，来占满   或者正常ImageRepeat.noRepeat
              fit: BoxFit.fill,
              centerSlice: new Rect.fromCircle(//可以设置图片在拉伸的时候从某一个固定的地方拉伸类似.9
                center: const Offset(200.0, 200.0),
                radius: 10.0,
              ),
            ),
            new Text(
              '加载网络图片',
              style: new TextStyle(
                fontSize: 30.0,
                decoration: TextDecoration.none,
                letterSpacing: 10.0,
              ),
            ),
            new Image.network(
              'http://pic1.win4000.com/wallpaper/2017-10-25/59f083092ed4f.jpg',
              height: 100.0,//设置图片的高
              width: 100.0,//设置图片的宽
              fit: BoxFit.cover,//BoxFit.fill  全图显示，显示可能拉伸或者充满  BoxFit.contain  全图显示 显示原比例，不需充满   BoxFit.cover 显示可能剪裁拉伸可能充满  BoxFit.fitWidth显示可能拉伸可能剪裁，宽度充满   BoxFit.fitHeight显示可能拉伸可能充满，高度充满  BoxFit.scaleDown  效果和contain差不多,但是此属性不允许显示超过源图片大小，可小不可大
              color: Colors.black,
              colorBlendMode:BlendMode.dstOver ,//color colorBlendMode具体效果后面再研究，我也没太弄懂,应该是一个类似混合模式的东东
              alignment: Alignment.center,//可以控制实际图片在容器内的位置
            ),
            new Directionality(
              textDirection: TextDirection.rtl,
              child: new Image.network(
                'http://pic1.win4000.com/wallpaper/2017-10-25/59f083092ed4f.jpg',
                width: 100.0,
                height: 100.0,
                matchTextDirection: true,//可以让图片里面的内容实现左右转换
//               gaplessPlayback: true,//当ImageProvider发生变化后，重新加载图片的过程中，原图片的展示是否保留。若值为true，保留，若为false，不保留，直接空白等待下一张图片加载。
              ),
            ),
            new Directionality(
              textDirection: TextDirection.ltr,
              child: new Image.network(
                'http://pic1.win4000.com/wallpaper/2017-10-25/59f083092ed4f.jpg',
                width: 100.0,
                height: 100.0,
                matchTextDirection: true,
              ),),
          ],
        ),
      ),
    );
  }
}