import 'package:Flutter_Study/comm/page_status_weight.dart';
import 'package:Flutter_Study/main.dart';
import 'package:flutter/material.dart';
import 'package:Flutter_Study/network/LearnHttp.dart';
import 'package:Flutter_Study/network/LearnJsonAnalysis.dart';
import 'package:Flutter_Study/comm/CommListItem.dart';
import 'package:Flutter_Study/comm/CommTitle.dart';

//各种动画
class LearnNetwork extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _LearnNetwork();
  }
}
class _LearnNetwork extends State<LearnNetwork>{
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: CommTitle.setMaterialAppBar(context, "网络",null),
      body: PageStatusWeight().showRequestStatus(CallBack(
        asynchronousTasks: (){
          return initData();
        },
        asynchronousResults: (data){
          return showReslutWight(data);
        }
      )),
    );
  }
  
  Future<List<MainEntity>> initData(){
    return Future<List<MainEntity>>((){
      return [
        MainEntity(name: "Http",description: "用于请求网络上的数据进行其交互",widget: LearnHttp()),
        MainEntity(name: "JsonAnalysis",description: "用以解析json结构的数据",widget: LearnJsonAnalysis()),
      ];
    });
  }
  
  Widget showReslutWight(data){
    var mData = data as List<MainEntity>;
    return new ListView.builder(
        itemCount: mData.length,
        itemBuilder: (context,index){
          return CommListItem.setMaterialListItem(context, mData[index].name,
              mData[index].description, mData[index].widget);
        });
  }
  
}