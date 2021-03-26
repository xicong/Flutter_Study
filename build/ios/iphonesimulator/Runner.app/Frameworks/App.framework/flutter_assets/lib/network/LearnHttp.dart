import 'dart:convert';
import 'package:Flutter_Study/utils/style_utils.dart';

import '../utils/title_utils.dart';
import '../utils/page_status_weight_utils.dart';
import '../comm/page/CodePreview.dart';
import '../network/article_list_entity.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

//用豆瓣开放api获取电影列表
class LearnHttp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _LearnHttp();
  }
}

class _LearnHttp extends State<LearnHttp> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar:
          CommTitle.setMaterialAppBar(context, "Http", Callback(codeOnTap: () {
        CodePreview.go(context, "LearnHttp", "lib/network/LearnHttp.dart");
      })),
      body:
          PageStatusWeight().showRequestStatus(CallBack(asynchronousTasks: () {
        return requestParsing();
      }, asynchronousResults: (data) {
        return showSuccesWright(data);
      })),
    );
  }

  Widget showSuccesWright(dynamic data) {
    var articleList = (data as ArticleListEntity).data.datas;
    return ListView.builder(
        itemCount: articleList.length,
        itemBuilder: (context, index) {
          return new Container(
            decoration: StyleUtils.blueRadiusDecoration(),
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            child: new Row(
              children: <Widget>[
                // Image.network(
                //   articleList[index].casts[0].avatars.small,
                //   width: 110,
                //   height: 150,
                // ),
                new Expanded(
                    child: new Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      articleList[index].title,
                      softWrap: true,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: new TextStyle(color: Colors.black),
                    ),
                    // Text(
                    //   articleList[index].durations[0],
                    //   softWrap: true,
                    //   maxLines: 1,
                    //   overflow: TextOverflow.ellipsis,
                    //   textAlign: TextAlign.left,
                    //   style: new TextStyle(color: Colors.black),
                    // ),
                    // Text(
                    //   movieList[index].mainlandPubdate,
                    //   softWrap: true,
                    //   maxLines: 1,
                    //   overflow: TextOverflow.ellipsis,
                    //   textAlign: TextAlign.left,
                    //   style: new TextStyle(color: Colors.black),
                    // ),
                    // Text(
                    //   movieList[index].subtype,
                    //   softWrap: true,
                    //   maxLines: 1,
                    //   overflow: TextOverflow.ellipsis,
                    //   textAlign: TextAlign.left,
                    //   style: new TextStyle(color: Colors.black),
                    // ),
                    // Text(
                    //   movieList[index].year,
                    //   softWrap: true,
                    //   maxLines: 1,
                    //   overflow: TextOverflow.ellipsis,
                    //   textAlign: TextAlign.left,
                    //   style: new TextStyle(color: Colors.black),
                    // ),
                  ],
                ))
              ],
            ),
          );
        });
  }

  //发起网络请求
  Future<ArticleListEntity> requestParsing() {
    var url = Uri.parse("https://www.wanandroid.com/article/list/0/json");
    return http.get(url).then((value) {
      print("网络请求到的数据${value.body}");
      return value.body;
    }).then((value) {
      return new ArticleListEntity().fromJson(json.decode(value));
    });
  }
}
