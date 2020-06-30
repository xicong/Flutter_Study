import 'dart:convert';

import 'package:Flutter_Study/comm/public_border.dart';
import 'package:Flutter_Study/network/movie_list_entity.dart';
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
  var movieList=List<MovieListSubject>();
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
      body:new ListView.builder(
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
      ),
      floatingActionButton: new FloatingActionButton(
        child: new Center(
          child: new Text('发送请求',style: new TextStyle(
            fontSize: 10.0,
            color: Colors.yellow
          ),),
        ),
          onPressed: (){
            httpRequest();
          }
      ),
    );
  }

  void httpRequest(){
    var url="http://api.douban.com/v2/movie/in_theaters?apikey=0df993c66c0c636e29ecbb5344252a4a&start=0&count=10";
    http.get(url).then((response) async {
      Map jsonData=json.decode(response.body);
      MovieListEntity douBanMovieListsEntity = new MovieListEntity().fromJson(jsonData);
      movieList.clear();
      setState(() {
        movieList.addAll(douBanMovieListsEntity.subjects);
      });
    });
  }
}