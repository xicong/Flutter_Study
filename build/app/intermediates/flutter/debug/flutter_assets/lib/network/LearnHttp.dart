import 'dart:convert';
import '../comm/CommTitle.dart';
import '../comm/page_status_weight.dart';
import '../comm/public_border.dart';
import '../comm/page/CodePreview.dart';
import '../network/movie_list_entity.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

//用豆瓣开放api获取电影列表
class LearnHttp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new _LearnHttp();
  }
}
class _LearnHttp extends State<LearnHttp>{
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: CommTitle.setMaterialAppBar(context, "Http", Callback(
        codeOnTap: (){
          CodePreview.go(context, "LearnHttp", "lib/network/LearnHttp.dart");
        }
      )),
      body: PageStatusWeight().showRequestStatus(CallBack(
          asynchronousTasks: (){
          return requestParsing();
        },
          asynchronousResults: (data){
          return showSuccesWright(data);
        }
      )),
    );
  }

  Widget showSuccesWright(dynamic data) {
    var movieList = (data as MovieListEntity).subjects;
    return  ListView.builder(
        itemCount: movieList.length,
        itemBuilder: (context, index){
          return new Container(
            decoration: PublicBorder.blueRadiusDecoration(),
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            child: new Row(
              children: <Widget>[
                Image.network(movieList[index].casts[0].avatars.small,
                  width: 110,
                  height: 150,
                ),
                new Expanded(
                    child: new Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text(movieList[index].title,
                          softWrap: true,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: new TextStyle(
                              color: Colors.black
                          ),
                        ),
                        Text(movieList[index].durations[0],
                          softWrap: true,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: new TextStyle(
                              color: Colors.black
                          ),
                        ),
                        Text(movieList[index].mainlandPubdate,
                          softWrap: true,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: new TextStyle(
                              color: Colors.black
                          ),
                        ),
                        Text(movieList[index].subtype,
                          softWrap: true,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: new TextStyle(
                              color: Colors.black
                          ),
                        ),
                        Text(movieList[index].year,
                          softWrap: true,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: new TextStyle(
                              color: Colors.black
                          ),
                        ),
                      ],
                    )
                )
              ],
            ),
          );
        }
    );
  }
  

  Future<MovieListEntity> requestParsing(){
    var url="http://api.douban.com/v2/movie/in_theaters?apikey=0df993c66c0c636e29ecbb5344252a4a&start=0&count=10";
    return http.get(url).then((value){
      return value.body;
    }).then((value){
      return new MovieListEntity().fromJson(json.decode(value));
    });
  }
}