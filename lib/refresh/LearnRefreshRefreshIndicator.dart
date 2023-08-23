import 'dart:async';
import 'package:flutter/material.dart';
import '../utils/print_utils.dart';
import '../utils/title_utils.dart';
import '../comm/page/CodePreview.dart';

class LearnRefreshRefreshIndicator extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LearnRefreshRefreshIndicator();
  }
}

class _LearnRefreshRefreshIndicator
    extends State<LearnRefreshRefreshIndicator> {
  bool isLoadMore = false; //防止在下拉过程中多次下拉多次请求
  ScrollController _scrollController = ScrollController();
  int itemCountData = 6; //默认6条数据
  int maxCountData = 10; //最多十条数据

  Future<Null> _handleRefresh() async {
    await Future.delayed(Duration(seconds: 1), () {
      //Future.delayed（）方法可以选择延迟处理任务
      setState(() {
        showPrint('开始刷新数据');
        itemCountData = 0;
        itemCountData = 6;
        return;
      });
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        //判断滑动到栏最底部
        if (!isLoadMore && itemCountData < maxCountData) {
          setState(() {
            isLoadMore = true;
            itemCountData += 1;
            isLoadMore = false;
          });
          showPrint('开始加载更多数据');
        }
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _scrollController.dispose(); //手动停止滑动
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommTitle.setMaterialAppBar(context, "RefreshIndicator",
          Callback(codeOnTap: () {
        CodePreview.go(context, "RefreshIndicator",
            "lib/refresh/LearnRefreshRefreshIndicator.dart");
      })),
      body: RefreshIndicator(
        color: Colors.white,
        backgroundColor: Colors.blue,
        child: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            showPrint('$index');
            if (index == itemCountData) {
              if (index == maxCountData) {
                return Container(
                  padding: EdgeInsets.all(20.0),
                  child: const Center(
                    child: Text('全部加载完成'),
                  ),
                );
              } else {
                return Container(
                  padding: EdgeInsets.all(20.0),
                  child: Center(
                    child: Text('加载中......'),
                  ),
                );
              }
            } else {
              return ListTile(
                title:
                    Text('item******************$index*******************'),
                subtitle: Text(
                    "在 Flutter 里有很多的 Button，包括了：MaterialButton、RaisedButton、FloatingActionButton、FlatButton、IconButton、ButtonBar、DropdownButton 等。"),
                isThreeLine: true,
                contentPadding:
                    EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
                leading: Icon(Icons.people),
              );
            }
          },
          itemCount: itemCountData + 1,
          controller: _scrollController,
        ),
        onRefresh: _handleRefresh,
      ),
    );
  }
}
