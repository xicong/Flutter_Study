import 'package:flutter/material.dart';
//最基本的视线方法
class LearnAnim extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new _LearnAnim();
  }
}
class _LearnAnim extends State<LearnAnim> with SingleTickerProviderStateMixin{

  AnimationController _animationController;
  Animation<double> sizeAnimation;
  Animation<double> opennessAnimation;
  String data='0';

  @override
  void initState() {
    super.initState();
    _animationController=new AnimationController(vsync: this,duration: const Duration(milliseconds: 2000));
    CurvedAnimation _curvedAnimation=new CurvedAnimation(parent: _animationController, curve: Curves.bounceInOut);
    opennessAnimation=Tween(begin: 0.0,end: 1.0).animate(_curvedAnimation);
    sizeAnimation=new Tween(begin: 0.0,end: 300.0).animate(_curvedAnimation)..addListener((){
      print(sizeAnimation.value);
      setState(() {
        data=sizeAnimation.value.toInt().toString();
      });
    })
    ..addStatusListener((status){
      switch(status){
        case AnimationStatus.completed://动画结束
          print('动画结束');
          _animationController.reverse();
          break;
        case AnimationStatus.dismissed://动画消失
          print('动画消失');
          break;
        case AnimationStatus.forward://重新执行
          print('动画开始');
          break;
        case AnimationStatus.reverse:
          print('动画反转');
          break;
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        leading: new GestureDetector(
          child: Icon(Icons.arrow_back_ios),
          onTap: (){
            Navigator.pop(context);
          },
        ),
        title: new GestureDetector(
          child: new AnimatedBuilder(//一种构建动画的样式
              animation: sizeAnimation,
              builder: (BuildContext context, Widget child){
                return new Opacity(
                  opacity: opennessAnimation.value,
                  child:new Text(sizeAnimation.value.toInt().toString()),
                );
              }
          ),
          onTap: (){
            _animationController.forward(from: 0.0);
          },
        ),
      ),
      body: new ChangeViewSizeAnim(//一种构建动画的样式
        anim:sizeAnimation ,
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: (){
          _animationController.forward(from: 0.0);
        },
        child: new Text(data),//一种构建动画的样式
      ),
    );
  }
}

class AnimationText extends AnimatedWidget {
  AnimationText({Key key, Animation<double> animation})
      :super(key: key, listenable: animation);
  @override
  Widget build(BuildContext context) {
    final Animation<double> animation = listenable;
    return new Text(animation.value.toInt().toString());
  }
}

class ChangeViewSizeAnim extends AnimatedWidget{
  ChangeViewSizeAnim({Key key,Animation<double> anim}):
      super(key:key,listenable:anim);
  @override
  Widget build(BuildContext context) {
    final Animation<double> animation = listenable;
    return new Center(
        child: new Container(
        width: animation.value.toDouble(),
        height:animation.value.toDouble(),
        color: Colors.red,
    ),
    );
  }
}