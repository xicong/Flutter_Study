import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutterdemo/comm/CommTitle.dart';
class LearnRefreshRefreshIndicator extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new _LearnRefreshRefreshIndicator();
  }
}
class _LearnRefreshRefreshIndicator extends State<LearnRefreshRefreshIndicator>{

  bool isLoadMore=false; //防止在下拉过程中多次下拉多次请求
  ScrollController _scrollController=new ScrollController();
  int itemCountData=15;

  Future<Null> _handleRefresh() async {
    await Future.delayed(Duration(seconds: 1), () {//Future.delayed（）方法可以选择延迟处理任务
      setState(() {
        print('开始刷新数据');
        itemCountData=0;
        itemCountData+=1;
        return null;
      });
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scrollController.addListener((){
      if(_scrollController.position.pixels==_scrollController.position.maxScrollExtent){
        if(!isLoadMore){
          setState(() {
            isLoadMore=true;
          });
          print('开始加载更多数据');
          setState(() {
            itemCountData+=1;
            isLoadMore=false;
          });
        }
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: CommTitle.setMaterialAppBar(context, "RefreshIndicator刷新",null),
      body: new RefreshIndicator(
        color: Colors.white,
        backgroundColor: Colors.blue,
        child: new ListView.builder(
          itemBuilder: (BuildContext context, int index){
            print('$index');
            if(index==itemCountData){
              return new Container(
                padding: EdgeInsets.all(20.0),
                child: new Center(
                  child: new Text('加载中......'),
                ),
              );
            }else{
              return new ListTile(
                title: new Text('item******************$index*******************'),
              );
            }
          },
          itemCount: itemCountData+1,
          controller:_scrollController ,
        ),
        onRefresh: _handleRefresh,
      ),
    );
  }
}