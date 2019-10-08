import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class LearnHttp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new _LearnHttp();
  }
}
class _LearnHttp extends State<LearnHttp>{
  String httpResult="null";
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Http'),
        leading: new GestureDetector(
          child: Icon(Icons.arrow_back_ios),
          onTap: (){
            Navigator.pop(context);
          },
        ),
      ),
      body:new Container(
        margin: EdgeInsets.all(20.0),
        padding: EdgeInsets.all(10.0),
        decoration: new BoxDecoration(
          color: Colors.black,
          border:new Border.all(
            color: Colors.yellow,
            width: 10.0,
          ),
        ),
        child: new Center(
          child:new SingleChildScrollView(
            child: new Text(
              httpResult,
              style: new TextStyle(
                  color: Colors.white
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        child: new Center(
          child: new Text('发送请求',style: new TextStyle(
            fontSize: 10.0,
            color: Colors.yellow
          ),),
        ),
          backgroundColor: Colors.red,
          onPressed: (){
            httpRequest();
          }
      ),
    );
  }

  void httpRequest(){
    var url="http://www.wanandroid.com/article/list/1/json";
    http.get(url).then((response){
      setState(() {
        httpResult=response.body;
      });
    });
  }
}