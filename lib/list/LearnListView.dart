import 'package:flutter/material.dart';
class LearnListView extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new _LearnListView();
  }
}
class _LearnListView extends State<StatefulWidget>{

  final List<int> data=[];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    for(int i=0;i<100;i++){
      data.add(i);
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('ListView'),
        leading: new GestureDetector(
          child: Icon(Icons.arrow_back_ios),
          onTap: (){
            Navigator.pop(context);
          },
        ),
      ),
      body: new ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          int itemDat=data[index];
          return new Row(
            children: <Widget>[
              new Container(
                child:new Image.network(
                  'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1569565542445&di=2e19492bf75c1b0e379312848e977bbb&imgtype=0&src=http%3A%2F%2Fimg3.redocn.com%2Ftupian%2F20151014%2Fweimeifengjingmeitu_5094438.jpg',
                  width: 100.0,
                  height: 70.0,
                  fit: BoxFit.cover,
                ),
                margin: EdgeInsets.all(10.0),
              ),
              new Expanded(
                child:new Column(
                  children: <Widget>[
                    new Container(
                      height: 70.0,
                      child: new Text('这是一张非常漂亮的美女图$itemDat，喜欢就赶紧来欣赏吧，等着你哦'),
                    ),
                  ],
                ),
                flex: 1,
              ),
            ],
          );
        },
        itemCount:data.length ,
      ),
    );
  }
}