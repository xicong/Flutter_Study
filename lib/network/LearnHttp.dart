import 'dart:convert';
import 'package:flutter_study/callback/PageStateCallBack.dart';
import 'package:flutter_study/comm/page/WebViewPage.dart';
import 'package:flutter_study/utils/style_utils.dart';
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
    return _LearnHttp();
  }
}

class _LearnHttp extends State<LearnHttp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          CommTitle.setMaterialAppBar(context, "Http", Callback(codeOnTap: () {
        CodePreview.go(context, "LearnHttp", "lib/network/LearnHttp.dart");
      })),
      body:
          PageStatusWeight().showRequestStatus(PageStateCallBack(asynchronousTasks: () {
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
          return InkWell(
            child: Container(
              decoration: StyleUtils.blueRadiusDecoration(),
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        articleList[index].title,
                        softWrap: true,
                        //是否允许换行 false 表示 只显示一行，如果设置了 maxLines 此属性失效
                        // maxLines: 1,
                        // overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        "分享人: ${articleList[index].shareUser}",
                        softWrap: true,
                        //是否可以换行
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: TextStyle(color: Colors.black),
                      ),
                      Text(
                        "分享时间: ",
                        softWrap: true,
                        //是否可以换行
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ))
                ],
              ),
            ),
            onTap: () {
              WebViewPage.go(
                  context, articleList[index].title, articleList[index].link);
            },
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
      return ArticleListEntity().fromJson(json.decode(value));
    });
  }
}
