import 'package:flutter/material.dart';
import 'package:loading/indicator/ball_spin_fade_loader_indicator.dart';
import 'package:loading/loading.dart';

typedef AsynchronousTasks = Future<dynamic> Function();
typedef AsynchronousResults = Widget  Function(dynamic data);
class CallBack{
  AsynchronousTasks asynchronousTasks;
  AsynchronousResults asynchronousResults;
  CallBack({this.asynchronousTasks,this.asynchronousResults});
}

//页面状态  加载中  加载错误  加载成功   数据为空   加载出错
class PageStatusWeight{

  //加载动画
  Widget showRequestLoading(){
    return new Center(
      child: Loading(
        indicator: BallSpinFadeLoaderIndicator(),
        size: 50.0,
        color: Colors.blue,
      ),
    );
  }
  
  
  //加载错误
  Widget showRequestError(){
    return new Center(
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Icon(Icons.error,
            size: 60,
          ),
          new Container(
            margin: EdgeInsets.only(top: 10),
            child: new Text("加载错误",
              style: new TextStyle(
                  color: Colors.black,
                  fontSize: 12
              ),
            ),
          )
        ],
      ),
    );
  }

  //空数据
  Widget showRequestNullData(){
    return new Center(
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Icon(Icons.wifi_tethering,
            size: 60,
          ),
          new Container(
            margin: EdgeInsets.only(top: 10),
            child: new Text("没有数据",
              style: new TextStyle(
                  color: Colors.black,
                  fontSize: 12
              ),
            ),
          )
        ],
      ),
    );
  }
  
  //异步请求
  Widget showRequestStatus(CallBack callBack){
    return new FutureBuilder(
        future: callBack.asynchronousTasks(),
        builder:  (BuildContext context,AsyncSnapshot snapshot){
          if(snapshot.connectionState == ConnectionState.done){//请求已完成
            if(snapshot.hasError){//请求失败
              return showRequestError();
            }else{//请求成功
              return callBack.asynchronousResults(snapshot.data);
            }
           }else{//请求未结束
            return showRequestLoading();
          }
        }
    );
  }
  
  
}