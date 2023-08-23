import 'package:dio/dio.dart';
import 'package:flutter_study/callback/PageStateCallBack.dart';
import 'package:flutter_study/comm/page/WebViewPage.dart';
import 'package:flutter_study/utils/style_utils.dart';
import '../dio.dart';
import '../utils/print_utils.dart';
import '../utils/title_utils.dart';
import '../utils/page_status_weight_utils.dart';
import '../comm/page/CodePreview.dart';
import 'package:flutter/material.dart';
import 'article_entity.dart';

//用豆瓣开放api获取电影列表
class LearnHttp extends StatefulWidget {
  const LearnHttp({super.key});
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
      body: PageStatusWeight()
          .showRequestStatus(PageStateCallBack(asynchronousTasks: () {
        return requestParsing();
      }, asynchronousResults: (data) {
        return showSuccesWright(data);
      })),
    );
  }

  Widget showSuccesWright(dynamic data) {
    var articleList = (data as ArticleEntity).data?.datas;
    return ListView.builder(
        itemCount: articleList?.length,
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
                        "${articleList?[index].title}",
                        softWrap: true,
                        //是否允许换行 false 表示 只显示一行，如果设置了 maxLines 此属性失效
                        // maxLines: 1,
                        // overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        "分享人: ${articleList?[index].shareUser}",
                        softWrap: true,
                        //是否可以换行
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: const TextStyle(color: Colors.black),
                      ),
                      const Text(
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
              WebViewPage.go(context, articleList![index].title!,
                  articleList[index].link!);
            },
          );
        });
  }

  //发起网络请求
  Future<ArticleEntity> requestParsing() async {
    try {
      final Response response =
          await dio.get("https://www.wanandroid.com/article/list/0/json");
      return ArticleEntity.fromJson(response.data);
    } catch (e) {
      showPrint(e);
    }
    return ArticleEntity();
  }
}
