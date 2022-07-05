import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_study/utils/title_utils.dart';

//最基本的视线方法
class LearnAnim extends StatefulWidget {
  const LearnAnim({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _LearnAnim();
  }
}

class _LearnAnim extends State<LearnAnim> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> sizeAnimation;
  late Animation<double> opennessAnimation;
  String data = '0';

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 2000));
    CurvedAnimation curvedAnimation = CurvedAnimation(
        parent: _animationController, curve: Curves.bounceInOut);
    opennessAnimation = Tween(begin: 0.0, end: 1.0).animate(curvedAnimation);
    sizeAnimation = Tween(begin: 0.0, end: 300.0).animate(curvedAnimation)
      ..addListener(() {
        if (kDebugMode) {
          print(sizeAnimation.value);
        }
        setState(() {
          data = sizeAnimation.value.toInt().toString();
        });
      })
      ..addStatusListener((status) {
        switch (status) {
          case AnimationStatus.completed: //动画结束
            print('动画结束');
            _animationController.reverse();
            break;
          case AnimationStatus.dismissed: //动画消失
            print('动画消失');
            break;
          case AnimationStatus.forward: //重新执行
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
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommTitle.setMaterialAppBar(context, "图片放大动画", null),
      body:const Text("data"),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _animationController.forward(from: 0.0);
        },
        child: Text(data), //一种构建动画的样式
      ),
    );
  }
}

class AnimationText extends AnimatedWidget {
  const AnimationText({required Key key, required Animation<double> animation})
      : super(key: key, listenable: animation);

  @override
  Widget build(BuildContext context) {
    final Listenable animation = listenable;
  //  return Text(animation.value.toInt().toString());
    return const Text("data");
  }
}

class ChangeViewSizeAnim extends AnimatedWidget {
  const ChangeViewSizeAnim({required Key key, required Animation<double> anim})
      : super(key: key, listenable: anim);

  @override
  Widget build(BuildContext context) {
    return const Text("data");
    // final Animation<double> animation = listenable;
    // return Center(
    //   child: Container(
    //     width: animation.value.toDouble(),
    //     height: animation.value.toDouble(),
    //     color: Colors.red,
    //   ),
    // );
  }
}
