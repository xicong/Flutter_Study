import 'package:flutter/material.dart';
import '../utils/title_utils.dart';
import '../comm/page/CodePreview.dart';

class LearnContainer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LearnContainer();
  }
}

class _LearnContainer extends State<LearnContainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommTitle.setMaterialAppBar(context, "Container",
          Callback(codeOnTap: () {
        CodePreview.go(context, "Container", "lib/layout/LearnContainer.dart");
      })),
      body: Container(
        width: 10.0,
        height: 10.0,
        alignment: Alignment(0.0, 0.0),
        //设置子控件的位置
//      color: Colors.brown,
        child: Text(
          '这是一个Container',
          textAlign: TextAlign.center, //设置文字居中
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        //显示的内容
        padding: EdgeInsets.all(0.0),
        //设置子控件padding
        margin: EdgeInsets.all(50.0),
        //设置子控件margin
//      foregroundDecoration:,  设置子控件上面的装饰
//      constraints:  设置子控件尺寸约束的条件 比如 宽高
        decoration: BoxDecoration(
            //设置子控件背后的装饰
            color: Colors.blue, //和Container下面的color会冲突 具体原因不详
            border: Border.all(
              //添加边框
              width: 10.0, //边框宽度
              color: Colors.green, //边框颜色
            ),
            borderRadius: BorderRadius.all(Radius.circular(20.0)), //设置圆角
            boxShadow: <BoxShadow>[
              //设置阴影
//          BoxShadow(
//            color: Colors.black,
//            blurRadius: 20.0,
//          ),
              BoxShadow(
                color: Colors.red, //阴影颜色
                blurRadius: 20.0, //阴影大小
              ),
//          BoxShadow(
//            color: Colors.yellowAccent,
//            blurRadius: 20.0,
//          ),
//          BoxShadow(
//            color: Colors.blue,
//            blurRadius: 30.0,
//          )
            ]),
      ),
    );
  }
}
