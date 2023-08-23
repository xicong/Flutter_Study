import 'package:flutter/material.dart';
class LearnMaterial extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _LearnMaterial();
  }
}
class _LearnMaterial extends State<LearnMaterial>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material'),
        leading: GestureDetector(
          child: const Icon(Icons.arrow_back_ios),
          onTap: (){
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        mainAxisAlignment:MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Material(
              color: Colors.blueAccent,
              shape: BeveledRectangleBorder(//斜角矩形边框
                side:const BorderSide(
                  width: 0.0,
                  color: Colors.blueAccent,
                  style: BorderStyle.none,
                ),
                borderRadius:BorderRadius.circular(65.0),
              ),
              child: Container(
                padding: const EdgeInsets.all(20.0),
                child: const Text('斜角矩形边框'),
              ),
            ),
          ),
          Center(
            child: Material(
              color: Colors.blueAccent,
              shape: BeveledRectangleBorder(//斜角矩形边框
                side:const BorderSide(
                  width: 1.0,
                  color: Colors.blueAccent,
                  style: BorderStyle.none,
                ),
                borderRadius:BorderRadius.circular(10.0),
              ),
              child: Container(
                padding: const EdgeInsets.all(20.0),
                child: const Text('斜角矩形边框'),
              ),
            ),
          ),
          Center(
            child: Material(
              color: Colors.blueAccent,
              shape:const BorderDirectional(
                start: BorderSide(
                  color: Colors.yellow,
                  width: 10.0,
                ),
                top: BorderSide(
                  color: Colors.deepOrange,
                  width: 10.0,
                ),
                end: BorderSide(
                  color: Colors.black87,
                  width: 10.0,
                ),
                bottom: BorderSide(
                  color: Colors.purpleAccent,
                  width: 10.0,
                )
              ),
              child:Container(
                padding: const EdgeInsets.all(30.0),
                child: const Text('多彩边框'),
              ),
            ),
          ),
          Center(
            child: Material(
              color: Colors.blueAccent,
              shape: const CircleBorder(
                side: BorderSide(
                  color: Colors.yellow,
                  width: 10.0,
                )
              ),
              child: Container(
                padding: const EdgeInsets.all(50.0),
                child: const Text('圆形边框'),
              ),
            ),
          ),
          Center(
            child: Material(
              color: Colors.blueAccent,
              shape: RoundedRectangleBorder(
                side: const BorderSide(
                  color: Colors.purpleAccent,
                  width: 5.0,
                ),
                borderRadius:BorderRadius.circular(20.0), //如果[borderRadius]被指定，那么[type]属性不能是 [MaterialType.circle]。
              ),
              child: Container(
                padding: EdgeInsets.all(30.0),
                child: Text('圆角矩形'),
              ),
            ),
          ),
          Center(
            child: Material(
              color: Colors.purpleAccent,
              elevation: 10.0,
              shadowColor: Colors.yellow,
              shape: const StadiumBorder(
                side: BorderSide(
                  color: Colors.brown,
                  width: 5.0,
                )
              ),
              child: Container(
                padding: const EdgeInsets.all(30.0),
                child: const Text('体育场形状'),
              ),
            ),
          )
        ],
      )
    );
  }
}