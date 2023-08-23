import 'package:flutter/material.dart';
import 'package:flutter_study/callback/PageStateCallBack.dart';

//页面状态  加载中  加载错误  加载成功   数据为空   加载出错
class PageStatusWeight{

  //加载动画
  Widget showRequestLoading(){
    return const Center(
      child: Text("data"),
      // child: Loading(
      //   indicator: BallSpinFadeLoaderIndicator(),
      //   size: 50.0,
      //   color: Colors.blue,
      // ),
    );
  }
  
  
  //加载错误
  Widget showRequestError(){
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Icon(Icons.error,
            size: 60,
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: const Text("加载错误",
              style: TextStyle(
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
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Icon(Icons.wifi_tethering,
            size: 60,
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: const Text("没有数据",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 12
              ),
            ),
          )
        ],
      ),
    );
  }
  
  //异步请求数据同步UI
  Widget showRequestStatus(PageStateCallBack callBack){
    return FutureBuilder(
        future: callBack.asynchronousTasks(),  //异步操作
        builder:  (BuildContext context,AsyncSnapshot snapshot){
          if(snapshot.connectionState == ConnectionState.waiting){//请求进行中
              return showRequestLoading();
           }else if(snapshot.hasError){//请求未结束
              return showRequestError();
          }else{  //请求成功
            return callBack.asynchronousResults(snapshot.data);
          }
        }
    );
  }
}