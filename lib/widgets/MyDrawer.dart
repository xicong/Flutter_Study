import 'package:flutter/material.dart';


class MyDrawer extends StatelessWidget {

  static const double IMAGE_ICON_WEIGHT=30.0;
  static const double ARROW_ICON_WEIGHT=13.0;
  var rightArrowIcon=new Image
      .asset('images/ic_arrow_right.png',width: ARROW_ICON_WEIGHT,height: ARROW_ICON_WEIGHT,);
  List menuTitles=['发你弹幕','动弹小黑屋','关于','设置'];
  TextStyle menuStyle=new TextStyle(
    fontSize: 15.0
  );

  @override
  Widget build(BuildContext context) {
    return new ConstrainedBox(
      constraints: const BoxConstraints.expand(width: 300.0),
        child: new Container(
          decoration: new BoxDecoration(
            color: const Color(0xFFFFFFFF),
            border: new Border.all(width: 1.0, color: Colors.black38),
            borderRadius: const BorderRadius.all(const Radius.circular(1.0)),
          ),
          child:new ListView.builder(
            padding: const EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 0.0),
            itemCount: 9,
            itemBuilder: buildItem,
         ),
        ),
    );
  }

  Widget buildItem(BuildContext context, int index){
    if(index.isOdd){//判断是否为奇数
      return new Divider();
    }
    return new Padding(
      padding: const EdgeInsets.all(10.0),
      child: new Center(
        child: new Row(//行元素
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            new Text(
              'ITEM',
              style: new TextStyle(
              color: Colors.black
              )
            ),
            new Icon(Icons.keyboard_arrow_right,color: Colors.blueGrey,)
          ],
        ),
      ),
    );
  }

}